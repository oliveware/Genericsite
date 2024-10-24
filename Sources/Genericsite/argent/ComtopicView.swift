//
//  ComtopicView.swift
//  Genericsite
//
//  Created by Herve Crespel on 28/09/2024.
//

import SwiftUI
import Oware
import Attribex
import Semantex

public struct ComtopicView: View {
    @Binding var comtopic: Comtopic
    @State var comptedit = false
    @State var topicedit =  false
    
    public init(_ compte:Binding<Comtopic>) {
        self._comtopic = compte
    }
    
    public var body: some View {
        HStack {
            if comtopic.compte.contractuel.banquid == "" {
                Button(action: {comptedit = true},
                       label: {Text("Nouveau compte -> à renseigner").font(.title)})
                .sheet(isPresented: $comptedit, content: {
                    CompteBancaireView($comtopic.compte)})
            } else {
                //CompteLabel($compte.compte)
                BankingDataShow($comtopic.compte.contractuel)
                    .font(.title2)
                Text(comtopic.solde.affiche("prévu"))
                    .font(.title)
                Text(comtopic.compte.contractuel.titulaire)
                    .padding(.leading,20)
                Spacer()
                VStack(spacing:10) {
                    Button(action: {comptedit = true},
                           label: {Text("détail")})
                    .sheet(isPresented: $comptedit, content: {
                        CompteBancaireView($comtopic.compte)
                            .frame(minWidth:900, minHeight:200)
                    })
                    
                    if comtopic.compte.contractuel.banque != nil {
                        Button(action:{topicedit = true})
                        {Text("navigation")}
                        .sheet(isPresented: $topicedit)
                        { ItemView($comtopic.nav) }
                    }
                }
            }
        }.frame(minWidth:950, minHeight: 100)
        .padding(5)
    }
}
/*
struct ComtopicEditor: View {
    @Binding var comtopic: Comtopic
    @State var topicedit =  false
    
    public init(_ compte:Binding<Comtopic>) {
        self._comtopic = compte
    }
    
    public var body: some View {

        VStack(alignment: .trailing) {
            CompteBancaireView($comtopic.compte)
            
            
        }
    }
}*/

public struct ComtopicPreview: View {
    @State var compte = Comtopic(nil)
    
    public var body: some View {
        ComtopicView($compte)
    }
}


#Preview ("view") {
    ComtopicPreview()
}

