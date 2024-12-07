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

     func company(_ id:String) -> Company? {
        var found : Company? = nil
        for company in companies {
            if company.id == id { found = company }
        }
        return found
    }
    
    var humans:[Human] = []
    var companies:[Company] = []
    
    var tables : [String:Coderef] = [:]
    var banques : [String:Banque] {  //= []
        var banks : [String:Banque] = [:]
        for company in companies {
            if let business = company.business {
                if let banque = business.banque {
                    banks[company.id] = banque
                }
            }
        }
        return banks
    }
    
  /*  public init( _ tables : [String:Table]) {
        self.tables = tables
        banques = Banque.all
    }*/
    
    public init () {
        //self.banques = Banque.all
        self.tables = Coderef.all
    }
    
    /*public init(_ json:String) {
        let contextejson = "{" + common + "," + json + "}"
        let jsonData = contextejson.data(using: .utf8)!
        let contexte = try! JSONDecoder().decode(Contexte.self, from: jsonData)
        self = contexte
    }*/
    
    func update() {
       // Banque.all = banques
        Coderef.all = tables

        
    }
    
 
}


