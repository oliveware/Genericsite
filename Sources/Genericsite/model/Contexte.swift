//
//  Contexte.swift
//  Genericsite
//
//  Created by Herve Crespel on 07/10/2024.
//
import SwiftUI
import Putex
import Semantex

public struct Contexte:Codable {
  //  var tables : [String:Table] = [:]
    var banques : [Banque] = []
    
  /*  public init( _ tables : [String:Table]) {
        self.tables = tables
        banques = Banque.all
    }*/
    
    public init (_ banques:[Banque]=[]) {
        self.banques = banques
    }
    
    public init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        self = try! JSONDecoder().decode(Contexte.self, from: jsonData)
    }
}


