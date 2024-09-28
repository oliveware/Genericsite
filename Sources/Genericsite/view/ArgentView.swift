//
//  ArgentView.swift
//
//
//  Created by Herve Crespel on 07/07/2024.
//

import SwiftUI
import Attribex
import Semantex

public struct ArgentView: View {
    @Binding var argent:Argent
    
    @State var ajoutmode = false
    
    public init(_ argent:Binding<Argent>) {
        _argent = argent
    }
    
    var avoirtotal: Solde {
        var avoir = argent.courant[0].solde
        if argent.courant.count > 1 {
            for i in 1..<argent.courant.count {
                avoir = avoir + argent.courant[i].solde
            }
        }
        for compte in argent.epargne {
            avoir = avoir + compte.solde
        }
        for compte in argent.bourse {
            avoir = avoir + compte.solde
        }
        return avoir
    }
    
    public var body: some View {
        VStack {
            SoldeView(avoirtotal, "Avoir total", nil ,[130, 130, 130, 130]).font(.title2)
            ScrollView {
                VStack(alignment: .leading) {
                    GroupBox("Compte courant"){
                        ForEach ($argent.courant) {
                            compte in
                            ComtopicView(compte)
                        }.frame(width:800,alignment:.leading)
                    }
                    
                    if argent.epargne.count > 0  {
                        GroupBox("Epargne"){
                            ForEach ($argent.epargne) {
                                compte in
                                ComtopicView(compte)
                            }.frame(width:800,alignment:.leading)
                        }
                    }
                    
                    if argent.bourse.count > 0  {
                        GroupBox("Bourse"){
                            ForEach ($argent.bourse) {
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
                    Button("compte courant", action: { argent.courant.append(Comtopic(nil))
                        ajoutmode = false
                    } ).padding(20)
                    Button("compte épargne", action: { argent.epargne.append(Comtopic(false))
                        ajoutmode = false
                    } ).padding(20)
                    Button("compte titre", action: { argent.bourse.append(Comtopic(true))
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
      //  argent.delete(id)
    }
   
}

struct ArgentPreview: View {
    @State var argent = Argent(Comtopic(nil))
    var body: some View {
        ArgentView( $argent )
    }
}

#Preview {
    ArgentPreview()
}
