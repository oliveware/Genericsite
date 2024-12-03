//
//  PatrimoineDocument.swift
//  Genericsite
//
//  Created by Herve Crespel on 03/12/2024.
//


import SwiftUI
import UniformTypeIdentifiers

/*extension UTType {
    static var jsonText: UTType {
        UTType(importedAs: "public.json")
    }
}*/

struct PatrimoineDocument: FileDocument {
    var sitemain: Sitemain
    //var argent : Argent
    
    init(_ sitemain:Sitemain) {
        self.sitemain = sitemain
        //argent = Argent(sitemain)
    }

  static var readableContentTypes: [UTType] { [.jsonText] }

   init(configuration: ReadConfiguration) throws {
        guard let json = configuration.file.regularFileContents
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        sitemain = try JSONDecoder().decode(Sitemain.self, from: json)
       //argent = Argent(sitemain)
    }
    
   func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let json = try JSONEncoder().encode(sitemain)
       // let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: json)
    }
}

