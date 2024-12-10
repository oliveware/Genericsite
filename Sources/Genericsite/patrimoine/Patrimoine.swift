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
    public var immo : [Foncier] = []
    public var argent : Argent?
    
    init(_ immobilier:[Foncier],
         _ argent: Argent,
         _ contexte:Contexte ) {
        self.immo = immobilier
        self.argent = argent
        self.contexte = contexte
    }
    
    public init(_ json:String = ""){
        if json != "" {
            let jsonData = json.data(using: .utf8)!
            self = try! JSONDecoder().decode(Patrimoine.self, from: jsonData)
        }
        contexte.update()
    }
    
    public init(_ json:String = "", _ intro:Theme){
        if json != "" {
            let jsonData = json.data(using: .utf8)!
            self = try! JSONDecoder().decode(Patrimoine.self, from: jsonData)
        }
        contexte.update()
        argent = Argent(Avoir(intro))
    }
}


