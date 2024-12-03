//
//  ContexteView.swift
//  Genericsite
//
//  Created by Herve Crespel on 10/10/2024.
//
import SwiftUI


public struct ContexteView: View {
    @Binding var contexte:Contexte
    
    @State var selectag = 1
    
    public init(_ contexte:Binding<Contexte>) {
        _contexte = contexte
    }
    
    public var body: some View {
        TabView(selection: $selectag)
        {
          //  .tabItem{Text("banques")}.tag(1)
        }
    }
}
