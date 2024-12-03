//
//  RubricView.swift
//  Genericsite
//
//  Created by Herve Crespel on 25/09/2024.
//

import SwiftUI

public struct RubricView: View {
    @Binding var rubric: Rubric
    
    public init(_ rubric:Binding<Rubric>) {
        _rubric = rubric
    }
    
    public var body: some View {
        VStack {
            ItemView($rubric)
            
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
    RubricView(.constant(samplemain.intro.items[0]))
}
