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
            Text (foncier.adresse)
            Text (foncier.valeur)
            Text ("aucun incident")
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
            }
            
          /*  if comtopic.compte.contractuel.banquid == "" {
                Button(action: {comptedit = true},
                       label: {Text("Nouveau compte -> à renseigner").font(.title)})
                .sheet(isPresented: $comptedit, content: {
                    ImmobilierView($comtopic.compte)})
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
                        ImmobilierView($comtopic.compte)
                            .frame(minWidth:1200, minHeight:200)
                    })
                    
                    if comtopic.compte.contractuel.banque != nil {
                        Button(action:{topicedit = true})
                        {Text("navigation")}
                        .sheet(isPresented: $topicedit)
                        { ItemView($comtopic.nav) }
                    }
                }
            }*/
        }.frame(minWidth:500, minHeight: 100)
        .padding(5)
    }
}
