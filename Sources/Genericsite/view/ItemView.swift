//
//  ItemView.swift
//  Genericsite
//
//  Created by Herve Crespel on 25/09/2024.



import SwiftUI

protocol Item {
    var name: String {get set}
    var label: String? {get set}
    var color: String? {get set}
    var titre: String? {get set}
    var exergue: String {get set}
    
    var slide: String? {get set}
    
    var first: Int? {get set}
    var last: Int? {get set}
}

struct FieldShow<T> : View {
    var prompt:String
    var string:String?
    
    init(_ p:String, _ s:T, _ defaut:String?=nil) {
        prompt = p
        switch s {
        case let s as String :
            string = s
        case let s as Int :
            string = String(s)
        case let s as String? :
            string = s
        case let s as Int? :
            string = s == nil ? nil : String(s!)
        default:
            string = nil
        }
    }
    
    var body:some View {
        if string != nil {
            if string == "" {
                Text(prompt).foregroundColor(.gray)
            } else {
                Text(string!)
            }
        }
    }
}
struct OptionalEdit:View{
    var prompt:String
    @Binding var string:String?
    var remove:()->Void
    
    init(_ p:String, _ optional:Binding<String?>, _ rem:@escaping ()->Void ) {
        prompt = p
        _string = optional
        remove = rem
    }
    
    var body: some View {
        HStack {
            Text(prompt)
            if let stringBinding: Binding<String> = Binding($string) {
                TextField("" ,text:stringBinding)
                Button("retirer", action : remove )
                
            } else {
                Button("ajouter") { string = "" }
            }
        }
    }
}

struct ItemShow<T:Item> : View {
    var item:T
    
    var body: some View {
        HStack(alignment:.center) {
            VStack {
                FieldShow("label", item.label, item.name).font(.title2)
                    .padding(5)
                    .border(Color.gray)
                FieldShow("color", item.color)
            }
            Spacer()
            VStack {
                FieldShow("titre", item.titre, item.label).font(.title)
                FieldShow("exergue", item.exergue).font(.title3)
                HStack {
                    FieldShow("slide", item.slide, item.name)
                    if item.first != nil && item.last != nil {
                        FieldShow("first", item.first)
                        if item.last! > item.first! {
                            Text("à ")
                            FieldShow("last", item.last)
                        }
                    }
                }.padding(.top,15)
               
            }.padding(20)
            Spacer()
            VStack {
                Text(item.name)
                    .padding(2)
                
                
                
            }
        }.padding(5)
    }
}

struct ItemEdit<T:Item> : View {
    @Binding var item: T
    @Binding var edition: Bool
    public var body: some View {
        
        VStack {
            GroupBox("indispensable") {
                HStack {
                    Spacer()
                    Text("exergue")
                    TextField("" ,text:$item.exergue)
                        .frame(width:400)
                        .padding(.trailing,10)
                    Text("name")
                    TextField("" ,text:$item.name)
                        .frame(width:100)
                }.frame(width:780, alignment:.leading)
            }
            GroupBox("optionnel") {
                HStack {
                    VStack {
                        OptionalEdit("label", $item.label, {item.label = nil})
                            .frame(width:180,alignment: .leading)
                        OptionalEdit("color", $item.color, {item.color = nil})
                            .frame(width:180,alignment: .leading)
                    }
                    VStack {
                        OptionalEdit("titre", $item.titre, {item.titre = nil})
                            .frame(width:450,alignment: .leading)
                            .padding(.leading,30)
                        HStack {
                            OptionalEdit("slide", $item.slide,
                                         {item.slide = nil ; item.first = nil ; item.last = nil})
                                .frame(width:210,alignment: .leading)
                            if item.slide != nil {
                                TextField("first" ,value:$item.first, format: .number).frame(width:30,alignment: .center)
                                TextField("last" ,value:$item.last, format: .number).frame(width:30,alignment: .center)
                            }
                        }.frame(width:350, alignment:.leading)
                    }
                }.frame(width:780, alignment:.leading)
            }
            HStack {
                Spacer()
                Button(action:{edition = false}){
                    Image(systemName: "chevron.up")
                }.frame(width:50)
                Spacer()
            }.padding(.top,20)
        }.frame(minWidth:850, alignment:.center)
            .padding(5)
    }
}

struct ItemView<T:Item>: View {
    @Binding var item: T
    @State var edition = false
    
    init(_ item:Binding<T>) {
        _item = item
    }
    
    var body: some View {
        VStack(spacing:10) {
            Button(action:{edition.toggle()}){
                ItemShow(item: item)
            }.padding(10)
            if edition {
                ItemEdit(item :$item, edition:$edition)
            }
            
        }.frame(minWidth:820)
    }
}

struct ItemPreview: View {
    @State var theme = samplemain.intro
    var body: some View {
        ItemView($theme)
            .frame(minHeight:400)
    }
}

#Preview("theme") {
    ItemPreview()
}
