//
//  Immobilier.swift
//  Genericsite
//
//  Created by Herve Crespel on 29/10/2024.
//
import SwiftUI
import Oware
import Putex

public struct Immobilier : Codable {
    var fonciers:[Foncier] = []
    
    public init() {}
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        self = try! JSONDecoder().decode(Immobilier.self, from: jsonData)
    }
}

/*public struct Immobilier : Codable {
    
    var set:NumberSet?
    
    public init() {}
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        self = try! JSONDecoder().decode(Immobilier.self, from: jsonData)
    }
}


struct Testmesure: View {
    @Binding var immo:Immobilier
    @State var select : NumberSet?
    
    var body : some View {
        if let set:Binding<NumberSet> = Binding($immo.set) {
            EnumPicker(sets, $select)
        }
    }
}
var sets : [NumberSet] = [.naturel, .decimal(2)]
var set = """
    {"set":{"naturel":"nat"}}
"""

struct Pretest: View {
    @State var immo = Immobilier(set)
    
    var body : some View {
        Testmesure(immo:$immo)
    }
}

#Preview {
    Pretest()
}*/
