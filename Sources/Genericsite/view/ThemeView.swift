//
//  ThemeView.swift
//  Genericsite
//
//  Created by Herve Crespel on 25/09/2024.
//

import SwiftUI

public struct ThemeView: View {
    @Binding var theme: Theme
    @State var edition = false
    
    public init(_ theme:Binding<Theme>) {
        _theme = theme
    }
    
    public var body: some View {
        VStack {
            ItemView($theme)
            
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
