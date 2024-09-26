//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 30/08/2024.
//

import SwiftUI

public struct MainView: View {
    @Binding var sitemain: Sitemain
    
    public init(_ main:Binding<Sitemain>) {
        _sitemain = main
    }
    
    public var body: some View {
        
        ThemeView($sitemain.intro).frame(minWidth:820)
    }

}

struct Premain: View {
    @State var site = argentmain
    var body: some View {
        MainView($site)
    }
}

#Preview {
    Premain()
}
