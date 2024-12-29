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
    var tables : [String:Coderef] = [:]
   
    
  /*  public init( _ tables : [String:Table]) {
        self.tables = tables
        banques = Banque.all
    }*/
    
    public init () {
        self.tables = Coderef.all
    }
    
    /*public init(_ json:String) {
        let contextejson = "{" + common + "," + json + "}"
        let jsonData = contextejson.data(using: .utf8)!
        let contexte = try! JSONDecoder().decode(Contexte.self, from: jsonData)
        self = contexte
    }*/
    
    func setables() {
       // Banque.all = banques
        Coderef.all = tables

        
    }
    
    
    
 
}


