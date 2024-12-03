//
//  Contexte.swift
//  Genericsite
//
//  Created by Herve Crespel on 07/10/2024.
//
import SwiftUI
import Putex
import Semantex
import Putex

public struct Contexte:Codable {
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
    
    public init(_ json:String) {
        let contextejson = "{" + common + "," + json + "}"
        let jsonData = contextejson.data(using: .utf8)!
        let contexte = try! JSONDecoder().decode(Contexte.self, from: jsonData)
        self = contexte
        Banque.all = contexte.banques
        Coderef.all = contexte.tables
    }
}


