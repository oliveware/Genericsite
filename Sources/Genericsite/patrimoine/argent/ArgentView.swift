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

public struct ArgentView: View {
    @Binding var argent:Argent
    var banques:[Banque] = []
    
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
                            CompteBancaireView(compte)
                        }.frame(minWidth:900,alignment:.leading)
                    }
                    
                    if argent.epargne.count > 0  {
                        GroupBox("Epargne"){
                            ForEach ($argent.epargne) {
                                compte in
                                CompteBancaireView(compte)
                            }.frame(minWidth:900,alignment:.leading)
                        }
                    }
                    
                    if argent.bourse.count > 0  {
                        GroupBox("Bourse"){
                            ForEach ($argent.bourse) {
                                compte in
                                CompteBancaireView(compte)
                            }.frame(minWidth:900,alignment:.leading)
                        }
                    }
                }
            }.frame(minWidth:1000,minHeight:500)
  
            if ajoutmode {
                HStack {
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
                }
            } else {
                Button("ajouter un compte", action:{ajoutmode = true})
                    .padding(20)
            }
        }
        .padding(.bottom,10)
        .padding(.top,10)
    }

    func delete(_ id:Int) {
      //  argent.delete(id)
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
 //   ArgentPreview(argent:Argent(argentmain).intro)
}
