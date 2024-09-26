//
//  ItemView.swift
//  Genericsite
//
//  Created by Herve Crespel on 25/09/2024.



import SwiftUI

protocol Item {
    var name: String {get set}
    var label: String {get set}
    var color: String {get set}
    var titre: String {get set}
    var exergue: String {get set}
    
    var slide: String {get set}
    
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

/*
public struct ItemView<T:Item>: View {
    @Binding var item: T
    
    public init(_ topic:Binding<T>) {
        _item = item as! Binding<T>
    }
    
    public var body: some View {
        Form{
            GroupBox("indispensable") {
                TextField("name" ,text:$item.name)
                TextField("exergue" ,text:$item.exergue)
                    .frame(width:300,alignment: .leading)
                TextField("color" ,text:$item.color)
            }.frame(width:300,alignment: .leading)
            GroupBox("optionnel") {
                TextField("label" ,text:$item.label)
                    .frame(width:120,alignment: .center)
                TextField("titre" ,text:$item.exergue)
                    .frame(width:300,alignment: .leading)
            }
            GroupBox("images") {
                HStack {
                    TextField("slide" ,text:$item.slide)
                        .frame(width:200,alignment: .center)
                    TextField("first" ,value:$item.first, format: .number).frame(width:70,alignment: .center)
                    TextField("last" ,value:$item.last, format: .number).frame(width:70,alignment: .center)
                }
            }
        }//.frame(minHeight:500)
    }
}

#Preview {
    ItemView<Topic>(.constant(argentmain.intro.items[0].items[0]))
}
*/
