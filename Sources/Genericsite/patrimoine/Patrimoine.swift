//
//  Patrimoine.swift
//  Genericsite
//
//  Created by Herve Crespel on 03/12/2024.
//

import SwiftUI
import Oware

public struct Patrimoine : Codable {
    public var contexte = Contexte()
    public var immo : [Foncier] = []
    public var contact : [Contact] = []
    
    init(_ immobilier:[Foncier],
        _ contacts:[Contact],
        _ contexte:Contexte ) {
        self.immo = immobilier
        self.contexte = contexte
        self.contact = contacts
    }
    
    public init(_ json:String = ""){
        if json != "" {
            let jsonData = json.data(using: .utf8)!
            self = try! JSONDecoder().decode(Patrimoine.self, from: jsonData)
        }
    }
}

let patrimoine = """
{
    "immo" : [],
    "contact": []
}
"""
