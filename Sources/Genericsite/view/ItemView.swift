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
            FieldShow("label", item.label, item.name).font(.title2)
                .padding(5)
                .border(Color.gray)
            Spacer()
            VStack {
                FieldShow("titre", item.titre, item.label).font(.title)
                FieldShow("exergue", item.exergue).font(.title3)
                
            }.padding(20)
            Spacer()
            VStack {
                Text(item.name)
                    .padding(2)
                
                HStack {
                    FieldShow("slide", item.slide, item.name)
                    FieldShow("first", item.first)
                    FieldShow("last", item.last)
                }
                FieldShow("color", item.color)
                
            }
        }.padding(5)
    }
}

struct ItemEdit<T:Item> : View {
    @Binding var item: T
    @Binding var edition: Bool
    public var body: some View {
        
        HStack {
            Form{
                HStack {
                    GroupBox("indispensable") {
                        TextField("name" ,text:$item.name)
                        TextField("exergue" ,text:$item.exergue)
                        
                    }.frame(width:300)
                    GroupBox("optionnel") {
                        OptionalEdit("label", $item.label, {item.label = nil})
                            .frame(width:350,alignment: .leading)
                        OptionalEdit("color", $item.color, {item.color = nil})
                            .frame(width:350,alignment: .leading)
                        OptionalEdit("titre", $item.titre, {item.titre = nil})
                            .frame(width:350,alignment: .leading)
                        HStack {
                            OptionalEdit("slide", $item.slide,
                                         {item.slide = nil ; item.first = nil ; item.last = nil})
                                .frame(width:210,alignment: .leading)
                            if item.slide != nil {
                                TextField("first" ,value:$item.first, format: .number).frame(width:60,alignment: .center)
                                TextField("last" ,value:$item.last, format: .number).frame(width:60,alignment: .center)
                            }
                        }.frame(width:350, alignment:.leading)
                    }.frame(width:350, alignment:.leading)
                }
            }
            Spacer()
            Button(action:{edition = false}){
                Image(systemName: "checkmark")
            }.frame(width:50)
        }.frame(minWidth:800, alignment:.center)
    }
}

struct ItemView<T:Item>: View {
    @Binding var item: T
    @State var edition = false
    
    init(_ item:Binding<T>) {
        _item = item
    }
    
    var body: some View {
        VStack {
            
            if edition {
                ItemEdit(item :$item, edition:$edition)
            } else {
                Button(action:{edition = true}){
                    ItemShow(item: item)
                }
            }
            //.sheet(isPresented: $edition, content: {})
            
        }.frame(minWidth:800)
    }
}

struct ItemPreview: View {
    @State var theme = argentmain.intro
    var body: some View {
        ItemView($theme)
    }
}

#Preview("theme") {
    ItemPreview()
}
