//
//  ArgentView.swift
//
//
//  Created by Herve Crespel on 07/07/2024.
//

import SwiftUI
import Attribex
import Semantex
import Oware
import Putex

public struct ArgentView: View {
    @Binding var argent:Argent
    var banques:[Banque] = []
    
    @State var modif = false
    @State private var ajoutmode = false
    
    public init(_ argent:Binding<Argent>) {
        _argent = argent
    }
    
    var argenttotal: Solde {
        var total = argent.courant[0].solde
        if argent.courant.count > 1 {
            for i in 1..<argent.courant.count {
                total = total + argent.courant[i].solde
            }
        }
        for comptebancaire in argent.epargne {
            total = total + comptebancaire.solde
        }
        for comptebancaire in argent.bourse {
            total = total + comptebancaire.solde
           
        }
        return total
    }
    
    public var body: some View {
        VStack {
            SoldeView(argenttotal, "Avoir total", nil ,[130, 130, 130, 130]).font(.title2)
            ScrollView {
                VStack(alignment: .leading) {
                    GroupBox("Compte courant"){
                        ForEach ($argent.courant) {
                            compte in
                            HStack(spacing:30) {
                                if modif {
                                    ConfirmedButton("minus", "ce compte courant  (\(compte.id))", {deletecourant(compte.id)
                                        modif = false})
                                }
                                CompteBancaireView(compte)
                            }
                        }.frame(minWidth:900,alignment:.leading)
                    }
                    
                    if argent.epargne.count > 0  {
                        GroupBox("Epargne"){
                            ForEach ($argent.epargne) {
                                compte in
                                HStack(spacing:30) {
                                    if modif {
                                        ConfirmedButton("minus", "ce compte épargne (\(compte.id))", {deletepargne(compte.id)
                                            modif = false})
                                    }
                                    CompteBancaireView(compte)
                                }
                            }.frame(minWidth:900,alignment:.leading)
                        }
                    }
                    
                    if argent.bourse.count > 0  {
                        GroupBox("Bourse"){
                            ForEach ($argent.bourse) {
                                compte in
                                HStack(spacing:30) {
                                    if modif {
                                        ConfirmedButton("minus", "ce compte titre  (\(compte.id))", {deletebourse(compte.id)
                                            modif = false})
                                    }
                                    CompteBancaireView(compte)
                                }
                            }.frame(minWidth:900,alignment:.leading)
                        }
                    }
                }
            }.frame(minWidth:1000,minHeight:500)
            HStack {
                if ajoutmode {
                    Text ("ajouter un compte")
                    Button("compte courant", action: {
                        argent.courant.append(CompteBancaire(nil))
                        ajoutmode = false
                    } ).padding(20)
                    Button("compte épargne", action: { argent.epargne.append(CompteBancaire(false))
                        ajoutmode = false
                    } ).padding(20)
                    Button("compte titre", action: { argent.bourse.append(CompteBancaire(true))
                        ajoutmode = false
                    } ).padding(20)
                    
                } else {
                    if argent.courant.count > 0 {
                        Button(action:{modif.toggle()})
                        {Image(systemName: "minus")}
                    }
                    Spacer()
                    Button("ajouter un compte", action:{ajoutmode = true})
                        .padding(20)
                }
            }.padding(10)
        }
        .padding(10)
    }

    func deletecourant(_ id:String) {
        var new : [CompteBancaire] = []
        for item in argent.courant {
            if item.id != id {
                new.append(item)
            }
        }
        argent.courant = new
    }
    func deletepargne(_ id:String) {
        var new : [CompteBancaire] = []
        for item in argent.epargne {
            if item.id != id {
                new.append(item)
            }
        }
        argent.epargne = new
    }
    func deletebourse(_ id:String) {
        var new : [CompteBancaire] = []
        for item in argent.bourse {
            if item.id != id {
                new.append(item)
            }
        }
        argent.bourse = new
    }
   
}

struct ArgentPreview: View {
    @State var argent = Argent(CompteBancaire(nil))
    var body: some View {
        ArgentView( $argent )
    }
}

#Preview("nil") {
    ArgentPreview(argent:Argent(CompteBancaire(nil)))
}

#Preview("sample") {
    ArgentPreview(argent:Argent(Avoir(sampleintro)))
}
