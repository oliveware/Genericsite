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
    }
}


