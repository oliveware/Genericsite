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
        
        ThemeView($sitemain.intro)
    }

}

#Preview {
    MainView(.constant(argentmain))
}
