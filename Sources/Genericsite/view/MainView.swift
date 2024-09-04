//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 30/08/2024.
//

import SwiftUI

struct MainView: View {
    @Binding var sitemain: Sitemain
    
    var body: some View {
        Text(sitemain.intro.name)
        Text(sitemain.intro.titre)
    }
}

#Preview {
    MainView(sitemain:.constant(Sitemain()))
}
