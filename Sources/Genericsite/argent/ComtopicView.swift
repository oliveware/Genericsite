//
//  ComtopicView.swift
//  Genericsite
//
//  Created by Herve Crespel on 28/09/2024.
//

import SwiftUI
import Attribex
import Semantex

public struct ComtopicView: View {
    @Binding var comtopic: Comtopic
    @State var edition = false
    
    public init(_ compte:Binding<Comtopic>) {
        self._comtopic = compte
    }
    
    public var body: some View {
        HStack {
            if comtopic.compte.contractuel.banquid == nil {
                Button(action: {edition = true},
                       label: {Text("Nouveau compte -> à renseigner").font(.title)})
                .sheet(isPresented: $edition, content: {
                    ComtopicEditor($comtopic)})
            } else {
                //CompteLabel($compte.compte)
                BankingDataShow($comtopic.compte.contractuel)
                    .font(.title2)
                Text(comtopic.solde.affiche("prévu"))
                    .font(.title)
                Text(comtopic.compte.contractuel.titulaire)
                    .padding(.leading,20)
                Spacer()
                Button(action: {edition = true},
                       label: {Text("détail")})
                .sheet(isPresented: $edition, content: {
                    ComtopicEditor($comtopic)
                })
            }
        }.frame(minWidth:500, minHeight: 100)
        .padding(5)
    }
}

struct ComtopicEditor: View {
    @Binding var comtopic: Comtopic
    @State var selected = 2
    
    public init(_ compte:Binding<Comtopic>) {
        self._comtopic = compte
    }
    
    public var body: some View {
        VStack {
            HStack {
                BankingDataShow($comtopic.compte.contractuel).font(.title)
                Spacer()
                SoldeView(comtopic.solde, nil, nil, nil)
            }.padding(10)
                
            
            TabView(selection:$selected) {
                
                BankingDataEdit($comtopic.compte.contractuel)
                    .tabItem {Text("contractuel")}.tag(1)
                if let portefeuille = comtopic.compte.portefeuille {
                    PortefeuilleShow(portefeuille)
                        .tabItem {Text("portefeuille")}.tag(2)
                }
                CompteView($comtopic.compte.compte)
                    .tabItem {Text("ecritures")}.tag(3)
                ItemView($comtopic.nav)
                    .tabItem {Text("navigation")}.tag(4)
                
            }.padding(5)
        }.padding(5)
    }
}

public struct ComtopicPreview: View {
    @State var compte = Comtopic(nil)
    
    public var body: some View {
        ComtopicView($compte)
    }
}

/*public struct BancairePredit: View {
    @State var compte = CompteBancaire()
    
    public var body: some View {
        CompteBancaireEditor($compte)
    }
}*/

#Preview ("view") {
    ComtopicPreview()
}
/*
#Preview ("edit") {
    BancairePredit()
}*/
