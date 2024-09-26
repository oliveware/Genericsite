//
//  RubricView.swift
//  Genericsite
//
//  Created by Herve Crespel on 25/09/2024.
//

import SwiftUI

struct RubricEdit : View {
    @Binding var item: Rubric
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
                            TextField("first" ,value:$item.first, format: .number).frame(width:70,alignment: .center)
                            TextField("last" ,value:$item.last, format: .number).frame(width:70,alignment: .center)
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

public struct RubricView: View {
    @Binding var rubric: Rubric
    @State var edition = false
    
    public init(_ rubric:Binding<Rubric>) {
        _rubric = rubric
    }
    
    public var body: some View {
        VStack {
            if edition {
                RubricEdit(item: $rubric, edition:$edition)
            } else {
                Button(action:{edition = true}){
                    ItemShow(item: rubric)
                }
            }
            //.sheet(isPresented: $edition, content: {RubriEdit(rubric:$rubric)})
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach ($rubric.items) {
                        topic in
                        TopicView(topic)
                    }.frame(alignment:.leading)
                }
            }.frame(minHeight:100)
        }.frame(minWidth:750)
    }
}

#Preview {
    RubricView(.constant(argentmain.intro.items[0]))
}
