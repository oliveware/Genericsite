//
//  TopicView.swift
//  Genericsite
//
//  Created by Herve Crespel on 25/09/2024.
//


import SwiftUI
import Oware

public struct TopicView: View {
    @Binding var topic: Topic
    @State var edition = false
    @State var show = false
    
    public init(_ topic:Binding<Topic>) {
        _topic = topic
    }
    
    public var body: some View {
        ItemView($topic)
        if let comptejson = topic.releve {
            Button("voir le compte (\(comptejson.soldebanque))"){show = true }
                .sheet(isPresented: $show,
                       content: {Text(comptejson.soldebanque)})
        }
    }
}

struct TopicPreview: View {
    @State var topic = argentmain.intro.items[0].items[0]
    var body: some View {
        ItemView($topic)
    }
}

#Preview("view") {
    TopicPreview()
}
#Preview("edit") {
    ItemEdit(item:.constant(argentmain.intro.items[0].items[0]),
              edition:.constant(true))
}
