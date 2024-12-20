//
//  QuittancesCatalog.swift
//  Genericsite
//
//
//  Created by Herve Crespel on 07/02/2023.
//

import SwiftUI
import Oware
import Putex
/*
struct QuittancesCatalog: View {
   @Binding var année : Rubric
  //  var moisandlast: [[String]]
   @Binding var location: Location
    
    @State var mois = 0
    
    var body: some View {
       
        switch payés(année).count {
        case 0:
                Text("pas de quittance").padding(30)
        case 1:
            if année.items[1].paiement[payés(année)[0]].acquitté {
            PdfMaker(rendus:[AnyView(
                QuittanceView(quittance:année.items[1].paiement[payés(année)[0]].quittance(location: location)))],
                        indice: payés(année)[0],
                        catalog:$location.site.catalogs[Int(année.name)!-location.site.startan]
            )
            .overlay(RoundedRectangle(cornerRadius: 1)
                    .stroke(Color.gray, lineWidth: 1))
            } else {
                Text("choisir la date de la quittance")
                    .padding(30)
            }
        default:
            HStack{
                VStack(alignment: .leading){
                    ForEach(0..<année.items[1].paiement.count, id:\.self) {
                        p in
                        if année.items[1].paiement[p].acquittable {
                            Button(JMA.moisfr[p], action: {mois = p})
                                .frame(width: 120)
                        }
                    }
                }
                
                if année.items[1].paiement[mois].acquitté {
                    PdfMaker(rendus:[AnyView(
                        QuittanceView(quittance:année.items[1].paiement[mois].quittance(location: location)))],
                                indice :mois,
                                catalog:$location.site.catalogs[Int(année.name)!-location.site.startan]
                    ).overlay(RoundedRectangle(cornerRadius: 1)
                        .stroke(Color.gray, lineWidth: 1))
                } else {
                    Text("choisir la date de la quittance")
                        .padding(30)
                }
            }
        }
    }
    
    // indices des paiements payés
    func payés(_ année:Rubric)->[Int]{
        let paiements = année.items[1].paiement
        var nbq : [Int] = []
        for p in 0..<paiements.count {
            let paiement = paiements[p]
            if paiement.payé && !paiement.sansquittance { nbq.append(p) }
        }
        return nbq
    }
}*/
/*
struct QuittancesCatalog_Previews: PreviewProvider {
    static var previews: some View {
        QuittancesCatalog(
            année:.constant(seclin.appartements[0].location.site.intro.items[0]),
            location:.constant(seclin.appartements[0].location))
    }
}
*/
