//
//  topics.swift
//  Locations
//
//  Created by Herve Crespel on 19/02/2023.
//

import Foundation

public struct Topic<T:Codable>: Codable,Identifiable, Item {
    public var id:String {name}
    // Catalink
    var catalog : String?
        
    // topic
    var name: String
    var exergue: String
    
    var label: String?
    var titre: String?
    var color: String?
    
    var type:String?
    var slide: String?
    var first: Int?
    var last: Int?
    
    var edition: String?  // "S0F0"
    var d:Int?            // 1
    
    public var releve: T?
    
    
    public init(_ page:Page) {
        catalog = page.catalog

        name    = page.name
        exergue = page.exergue
        
        label   = page.label
        titre   = page.titre
        color   = page.color
        
        type    = page.type
        slide   = page.slide
        first   = page.first
        last    = page.last
        
        edition = page.edition
        d       = page.d
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
