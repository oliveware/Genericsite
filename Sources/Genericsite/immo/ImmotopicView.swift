//
//  ImmotopicView.swift
//  Genericsite
//
//  Created by Herve Crespel on 17/11/2024.
//
import SwiftUI
import Oware

struct FonciertopicView: View {
    @Binding var foncier: Foncier
    @State var foncedit = false
    
    var body: some View {
        HStack(spacing:30) {
            Text (foncier.adresse).frame(width:200)
            Text (foncier.valeur.euro).frame(width:200)
            Text ("aucun incident").frame(width:200)
            Spacer()
            VStack(spacing:10) {
                Button(action: {foncedit = true},
                       label: {Text("détail")})
                .sheet(isPresented: $foncedit, content: {
                    FoncierView($foncier)
                        .frame(minWidth:1200, minHeight:200)
                })
                
             /*   if comtopic.compte.contractuel.banque != nil {
                    Button(action:{topicedit = true})
                    {Text("navigation")}
                    .sheet(isPresented: $topicedit)
                    { ItemView($comtopic.nav) }
                }*/
            }.frame(width:160)
        }.frame(minWidth:800, minHeight: 100)
        .padding(5)
    }
}
