//
//  TopicView.swift
//  Genericsite
//
//  Created by Herve Crespel on 25/09/2024.
//


import SwiftUI

struct TopicEdit : View {
    @Binding var item: Topic
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
                        HStack {
                            TextField("label" ,text:$item.label)
                                .frame(width:200,alignment: .center)
                            TextField("color" ,text:$item.color)
                                .frame(width:100,alignment: .center)
                        }
                        TextField("titre" ,text:$item.exergue)
                            .frame(width:300,alignment: .leading)
                        HStack {
                            TextField("slide" ,text:$item.slide)
                                  .frame(width:200,alignment: .center)
                            TextField("first" ,value:$item.first, format: .number).frame(width:50,alignment: .center)
                            TextField("last" ,value:$item.last, format: .number).frame(width:50,alignment: .center)
                        }
                    }.frame(width:350)
                }
            }
            Button(action:{edition = false}){
                Image(systemName: "checkmark")
            }.frame(width:50)
        }.frame(minWidth:750, alignment:.center)
    }
}

public struct TopicView: View {
    @Binding var topic: Topic
    @State var edition = false
    
    public init(_ topic:Binding<Topic>) {
        _topic = topic
    }
    
    public var body: some View {
        VStack {
            
            if edition {
                TopicEdit(item :$topic, edition:$edition)
            } else {
                Button(action:{edition = true}){
                    ItemShow(item: topic)
                }
            }
            //.sheet(isPresented: $edition, content: {})
            
        }.frame(minWidth:700)
    }
}

#Preview("view") {
    TopicView(.constant(argentmain.intro.items[0].items[0]))
}
#Preview("edit") {
    TopicEdit(item:.constant(argentmain.intro.items[0].items[0]),
              edition:.constant(true))
}
