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
        let commonData = common.data(using: .utf8)!
        let tableData = json.data(using: .utf8)!
        let jsonData = commonData + tableData
        self = try! JSONDecoder().decode(Contexte.self, from: jsonData)
    }
}


