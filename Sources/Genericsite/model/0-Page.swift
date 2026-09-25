//
//  Page.swift
//  Genericsite
//
//  Created by Herve Crespel on 25/09/2026.
//

public struct Page {
    // Catalink
    var catalog : String?
    
    // topic
    var name: String
    var exergue: String
    
    var label: String?
    var titre: String?
    var color: String?
    
    var type:String?        // "pdfimg"
    var slide: String?
    var first: Int?
    var last: Int?
    
    var edition: String?  // "S0F0"
    var d:Int?            // 0 ou 1
    
    public init(_ name:String, _ exergue:String,
                _ label:String? = nil, _ titre:String? = nil) {
        self.name = name
        self.exergue = exergue
        if exergue == "lastmaj" {
            self.exergue = Theme.lastmaj
        } else {
            self.exergue = exergue }
        
    }
}
