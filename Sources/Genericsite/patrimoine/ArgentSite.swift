//
//  PatrimoineSite.swift
//  Genericsite
//
//  Created by Herve Crespel on 09/12/2024.
//

import SwiftUI
import Semantex

public struct PatrimoineSite: View {
    @Binding var site: Sitemain
    
    @State var versement = Versement()
    @State var selectag = 1
    
    public init(_ site: Binding<Sitemain>) {
        _site = site
    }
    
    public var body: some View {

       // TabView(selection: $selectag)
       // {
            Themavoir($site.intro)
                .tabItem{Text("monétaire")}.tag(3)
        //    DébitCrédit()
        //        .tabItem{Text("versements")}.tag(5)
       // }
        .padding(10)
        .frame(width:1200, height:800)
        
    }
}
        
        //@State var immo = false
        /*ZStack{
            
            if immo {
                Immo(immobilier:$document.sitemain.immobilier)
            } else {
                Sous(argent: $document.argent)
            }
            VStack {
                HStack {
                    Button(action: {immo.toggle()})
                    {Image(systemName: immo ? "house" : "dollarsign")}
                    Spacer()
                }
                Spacer()
            }
        }*/


struct PatrimoineSitePreview: View {
    @State var site : Sitemain = samplemain
    
    var body: some View {
        PatrimoineSite( $site)
            .frame(width:900, height:600)
    }
    
}
#Preview {
    PatrimoineSitePreview()
}
