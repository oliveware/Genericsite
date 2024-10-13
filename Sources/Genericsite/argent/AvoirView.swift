//
//  AvoirView.swift
//  Genericsite
//
//  Created by Herve Crespel on 02/10/2024.
//

//
//  AvoirView.swift
//
//
//  Created by Herve Crespel on 07/07/2024.
//

import SwiftUI
import Attribex
import Semantex

public struct AvoirView: View {
    @Binding var avoir:Avoir
    
    @State private var ajoutmode = false
    
    public init(_ avoir:Binding<Avoir>) {
        _avoir = avoir
    }
    
    var avoirtotal: Solde {
        var total = avoir.courant[0].solde
        if avoir.courant.count > 1 {
            for i in 1..<avoir.courant.count {
                total = total + avoir.courant[i].solde
            }
        }
        for comtopic in avoir.epargne {
            total = total + comtopic.solde
        }
        for comtopic in avoir.bourse {
            total = total + comtopic.solde
            if let portefeuille = comtopic.compte.portefeuille {
                total = total + portefeuille.valeur
            }
        }
        return total
    }
    
    public var body: some View {
        VStack {
            SoldeView(avoirtotal, "Avoir total", nil ,[130, 130, 130, 130]).font(.title2)
            ScrollView {
                VStack(alignment: .leading) {
                    GroupBox("Compte courant"){
                        ForEach ($avoir.courant) {
                            compte in
                            ComtopicView(compte)
                        }.frame(width:800,alignment:.leading)
                    }
                    
                    if avoir.epargne.count > 0  {
                        GroupBox("Epargne"){
                            ForEach ($avoir.epargne) {
                                compte in
                                ComtopicView(compte)
                            }.frame(width:800,alignment:.leading)
                        }
                    }
                    
                    if avoir.bourse.count > 0  {
                        GroupBox("Bourse"){
                            ForEach ($avoir.bourse) {
                                compte in
                                ComtopicView(compte)
                            }.frame(width:800,alignment:.leading)
                        }
                    }
                }
            }.frame(minHeight:500)
  
            if ajoutmode {
                HStack {
                    Text ("ajouter un compte")
                    Button("compte courant", action: {
                        avoir.courant.append(Comtopic(nil))
                        ajoutmode = false
                    } ).padding(20)
                    Button("compte épargne", action: { avoir.epargne.append(Comtopic(false))
                        ajoutmode = false
                    } ).padding(20)
                    Button("compte titre", action: { avoir.bourse.append(Comtopic(true))
                        ajoutmode = false
                    } ).padding(20)
                }
            } else {
                Button("ajouter un compte", action:{ajoutmode = true})
                    .padding(20)
            }
        }.frame(width:840)
            .padding(.bottom,10)
            .padding(.top,10)
    }

    func delete(_ id:Int) {
      //  avoir.delete(id)
    }
   
}

struct AvoirPreview: View {
    @State var avoir = Avoir(Comtopic(nil))
    var body: some View {
        AvoirView( $avoir )
    }
}

#Preview {
    AvoirPreview()
}
