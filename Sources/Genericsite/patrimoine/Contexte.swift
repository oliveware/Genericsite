//
//  Contexte.swift
//  Genericsite
//
//  Created by Herve Crespel on 07/10/2024.
//
import SwiftUI

import Semantex
import Oware
import Putex

public struct Contexte:Codable {
    var humans:[Human] = []
    var companies:[Company] = []
    
    var tables : [String:Coderef] = [:]
    var banques : [Banque] = []
    
  /*  public init( _ tables : [String:Table]) {
        self.tables = tables
        banques = Banque.all
    }*/
    
    public init () {
        self.banques = Banque.all
        self.tables = Coderef.all
    }
    
    /*public init(_ json:String) {
        let contextejson = "{" + common + "," + json + "}"
        let jsonData = contextejson.data(using: .utf8)!
        let contexte = try! JSONDecoder().decode(Contexte.self, from: jsonData)
        self = contexte
    }*/
    
    func update() {
        Banque.all = banques
        Coderef.all = tables

        
    }
    
 
}


