//
//  topics.swift
//  Locations
//
//  Created by Herve Crespel on 19/02/2023.
//

import Foundation
import Oware

struct Navigation: Codable,Identifiable,Item {
    var id:String {name}
    
    var name: String
    var exergue: String
    var label: String?
    var color: String?
    var titre: String?
    var slide: String?
    var first: Int?
    var last: Int?
    
    init (_ item:Topic) {
        name = item.name
        exergue = item.exergue
        label = item.label
        titre = item.titre
        color = item.color
        slide = item.slide
        first = item.first
        last = item.last
    }
    
    init(_ n:String, _ x:String) {
        name = n
        exergue = x
    }
}

public struct Topic: Codable,Identifiable, Item {
    public var id:String {name}
    // Catalink
    var catalog = ""
        
    // topic
    var name: String
    var exergue: String
    
    var label: String?
    var titre: String?
    var color: String?
    
    var slide: String?
    var first: Int?
    var last: Int?
    
    var edition: String?  //= "S0F0"
    var d:Int?            //=1
    
    // compte bancaire
    public var releve: Comptejson?

    init (_ comtopic:Comtopic) {
        let item = comtopic.nav
        name = item.name
        label = item.label
        titre = item.titre
        exergue = item.exergue
        slide = item.slide
        first = item.first
        last = item.last
        color = item.color
        releve = Comptejson(comtopic.compte)
    }
    public init(_ n:String, _ t:String?, _ cj:Comptejson, _ cl:String) {
        name = n
        titre = t
        label = t ?? n
        color = cl
        exergue = ""
        releve = cj
    }
    
    public enum KindofTopic : String, Codable {
        case courant
        case epargne
        case bourse
        case conso
        case paiement
        case solde
    }
    
    public init(_ k:KindofTopic, _ c:String) {
        color = c
        switch k {
        case .conso:
            name = "consommation"
            label = "consommation"
            titre = "Suivi de consommation"
            exergue = "et moyenne journalière"
        case .bourse:
            name = "compte"
            label = "compte"
            titre = "Compte"
            exergue = ""
        case .courant:
            name = "compte"
            label = "compte"
            titre = "Compte"
            exergue = ""
        case .epargne:
            name = "compte"
            label = "compte"
            titre = "Compte"
            exergue = ""
        case .paiement:
            name = "paiement"
            label = "paiement"
            titre = "Compte"
            exergue = ""
        case .solde:
            name = "solde"
            label = "solde"
            titre = "Compte"
            exergue = ""
        }
    }

    init() {
        name = ""
        exergue = ""
        color = "dark"
      /*  paiement = []
        for mois in 1...12 {
            paiement.append(Paiement(bail,mois,an))
        }*/
    }

}
