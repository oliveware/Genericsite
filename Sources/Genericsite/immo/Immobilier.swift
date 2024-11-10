//
//  Immobilier.swift
//  Genericsite
//
//  Created by Herve Crespel on 29/10/2024.
//
import SwiftUI
import Oware

public struct Immobilier : Codable {
    var fonciers:[Foncier] = []
    
    public init() {}
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        self = try! JSONDecoder().decode(Immobilier.self, from: jsonData)
    }
}
