//
//  Patrimoine.swift
//  Genericsite
//
//  Created by Herve Crespel on 03/12/2024.
//

import SwiftUI
import Oware
import Semantex
import Putex

public struct Patrimoine : Codable {
    public var contexte = Contexte()
    public var contacts = Contacts()
    public var immo : [Foncier] = []
    public var locations: [Location] = []
    public var argent : Argent?
    
    init(_ immobilier:[Foncier],
         _ argent: Argent,
         _ locations: [Location],
         _ contexte:Contexte,
         _ contacts:Contacts ) {
        self.immo = immobilier
        self.argent = argent
        self.contexte = contexte
        self.contacts = contacts
        self.locations = locations
    }
    
    public init(_ json:String = ""){
        if json != "" {
            let jsonData = json.data(using: .utf8)!
            self = try! JSONDecoder().decode(Patrimoine.self, from: jsonData)
        }
        contexte.setables()
    }
    
    public init(_ json:String = "", _ intro:Theme){
        if json != "" {
            let jsonData = json.data(using: .utf8)!
            self = try! JSONDecoder().decode(Patrimoine.self, from: jsonData)
        }
        contexte.setables()
        argent = Argent(Avoir(intro))
    }
}


