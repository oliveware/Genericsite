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
    
    init(_ immobilier:[Foncier],
        _ contexte:Contexte ) {
        self.immo = immobilier
        self.contexte = contexte
    }
    
    public init(_ json:String = ""){
        if json != "" {
            let jsonData = json.data(using: .utf8)!
            self = try! JSONDecoder().decode(Patrimoine.self, from: jsonData)
        }
        contexte.update()
    }
    
  
}


