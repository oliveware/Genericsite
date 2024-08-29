//
//  topics.swift
//  Locations
//
//  Created by Herve Crespel on 19/02/2023.
//

import Foundation

enum KindofTopic : String, Codable {
    case compte
    case conso
    case paiement
    case solde
}

struct Topic: Codable {
    // Catalink
    var catalog = ""
        
    // topic
    var name: String = ""
    var label: String = ""
    var color: String = colors[2]
    var titre: String = ""
    var exergue: String = ""
    
    var slide: String?
    
    var first: Int?
    var last: Int?
    
    var edition: String? //= "S0F0"
    var d:Int = 1
    
    // compte bancaire
    var releve: Comptejson?
    
    // historique des paiements
  //  var paiement: [Paiement] = []
    
    init(_ k:KindofTopic) {
        name = "consommation"
        label = "consommation"
        titre = "Suivi de consommation"
        exergue = "et moyenne journalière"

    }

    init() {
        
      /*  paiement = []
        for mois in 1...12 {
            paiement.append(Paiement(bail,mois,an))
        }*/
    }

}

extension Consomois {
    
    
    /*mutating func setconsomois(_ courant:IndexRelatif, _ bail:Bail) {
     
     intro.items[indexan].conso[indexmois] = Consomois(courant, histoconso)
     // maj définitive du consomois précédent
     fixconsomois(indexmois, indexan, courant.date.année)
     }
     
     mutating func updateconsomois(_ courant:IndexRelatif) {
     histoconso.update(courant)
     let indexan = courant.date.année - (Int(intro.items[0].name) ?? 0)
     let indexmois = courant.date.mois - 1
     intro.items[indexan].conso[indexmois].update(courant, histoconso)
     }
     
     mutating func fixconsomois(_ indexmois:Int, _ indexan:Int, _ année:Int) {
     if indexmois == 0 {
     if indexan > 0 {
     intro.items[indexan-1].conso[11].update(12, année-1, histoconso)
     } else {
     Erreur("indexan négatif impossible","Siteweb", "fixconsomois").show()
     }
     } else {
     intro.items[indexan].conso[indexmois].update(indexmois+1, année, histoconso)
     }
     }
     */
}