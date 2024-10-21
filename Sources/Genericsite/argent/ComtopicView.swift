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
    @State var topicedit =  false
    
    public init(_ compte:Binding<Comtopic>) {
        self._comtopic = compte
    }
    
    public var body: some View {

        VStack(alignment: .trailing) {
            CompteBancaireView($comtopic.compte)
            
            if comtopic.compte.contractuel.banque != nil {
                Button(action:{topicedit = true})
                {Text("navigation")}
                    .offset(CGSize(width: 0, height: -40))
                    .sheet(isPresented: $topicedit)
                { ItemView($comtopic.nav) }
            }
        }
    }
}

public struct ComtopicPreview: View {
    @State var compte = Comtopic(nil)
    
    public var body: some View {
        ComtopicView($compte)
    }
}
public struct ComtopicEditPreview: View {
    @State var compte = Comtopic(nil)
    
    public var body: some View {
        ComtopicEditor($compte)
            .frame(width:600)
    }
}

#Preview ("view") {
    ComtopicPreview()
}

#Preview ("edit") {
    ComtopicEditPreview()
}
