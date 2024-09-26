//
//  ThemeView.swift
//  Genericsite
//
//  Created by Herve Crespel on 25/09/2024.
//

import SwiftUI

struct ThemeEdit : View {
    @Binding var item: Theme
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
                                .frame(width:120,alignment: .center)
                            TextField("color" ,text:$item.color)
                                .frame(width:100,alignment: .center)
                        }
                        TextField("titre" ,text:$item.titre)
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

public struct ThemeView: View {
    @Binding var theme: Theme
    @State var edition = false
    
    public init(_ theme:Binding<Theme>) {
        _theme = theme
    }
    
    public var body: some View {
        VStack {
            if edition {
                ThemeEdit(item:$theme, edition:$edition)
            } else {
                Button(action:{edition = true}){
                    ItemShow(item: theme)
                }
            }
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach ($theme.items) {
                        rubric in
                        RubricView(rubric)
                    }.frame(alignment:.leading)
                }
            }.frame(minHeight:200)
        }.frame(minWidth:750)
    }
}

#Preview {
    ThemeView(.constant(argentmain.intro))
}
