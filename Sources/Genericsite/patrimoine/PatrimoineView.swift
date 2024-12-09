//
//  PatrimoineView.swift
//  Genericsite
//
//  Created by Herve Crespel on 03/12/2024.
//

import SwiftUI
import Semantex

public struct PatrimoineView: View {
    @Binding var patrimoine: Patrimoine
    
    @State var versement = Versement()
    @State var selectag = 1
    
    public init(_ patrimoine: Binding<Patrimoine>) {
        _patrimoine = patrimoine
    }
    
    public var body: some View {

        TabView(selection: $selectag)
        {
            ImmobilierView($patrimoine.immo)
                .tabItem{Text("immobilier")}.tag(1)
            Text("gestion des locations")
                .tabItem{Text("location")}.tag(2)
            ArgentView($patrimoine.argent)
                .tabItem{Text("monétaire")}.tag(3)
            DébitCrédit()
                .tabItem{Text("versements")}.tag(5)
            ContactView($patrimoine.contexte)
                .tabItem{Text("contacts")}.tag(7)
            
            
        }.padding(10)
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


struct PatrimoinePreview: View {
    @State var patrimoine: Patrimoine
    
    init(_ patrimoine:Patrimoine){
        self.patrimoine = patrimoine
    }
    
    var body: some View {
        PatrimoineView( $patrimoine)
            .frame(width:900, height:600)
    }
    
}
#Preview {
    PatrimoinePreview(Patrimoine(patrimoinesample))
}


