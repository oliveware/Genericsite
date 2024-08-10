//
//  File.swift
//  
//
//  Created by Herve Crespel on 10/08/2024.
//

import Foundation

struct Argentjson:Codable {
    var comptes:[Comptejson] = []
    var epargne:[Comptejson] = []
    var bourse:[Comptejson] = []
    
  /*  public init(_ filename:String = "moi") {
        let file = Fichierjson("argent", filename)
        if let data = file.read(self) {
            self = data
        } else {
            print("error")
        }
    }
    */

}
