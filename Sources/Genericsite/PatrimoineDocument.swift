//
//  PatrimoineDocument.swift
//  Genericsite
//
//  Created by Herve Crespel on 03/12/2024.
//


import SwiftUI
import UniformTypeIdentifiers
import Oware
import Fichiers

extension UTType {
    static var jsonPatrimoine: UTType {
        UTType(importedAs: "org.inawani.do.patrimoine")
    }
}

public struct PatrimoineDocument: FileDocument {
    public var patrimoine : Patrimoine
    
    public init(_ patrimoine:Patrimoine) {
        self.patrimoine = patrimoine
        Company.all = patrimoine.contacts.companies
    }
    
    public init(_ repertoire:String,_ patrimoinefile:String, _ argentfile:String? = nil) {
        let fichierpatrimoine = Fichierjson(repertoire, patrimoinefile)
        patrimoine = fichierpatrimoine.read() ?? Patrimoine()
        if argentfile != nil {
            let fichierargent = Fichierjson(repertoire, argentfile)
            if let sitemain:Sitemain = fichierargent.read() {
                patrimoine.argent = Argent(Avoir(sitemain.intro))
            }
        }
    }

    public static var readableContentTypes: [UTType] { [.jsonPatrimoine] }

   public init(configuration: ReadConfiguration) throws {
        guard let json = configuration.file.regularFileContents
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        patrimoine = try JSONDecoder().decode(Patrimoine.self, from: json)
       Company.all = patrimoine.contacts.companies
    }
    
   public func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let json = try JSONEncoder().encode(patrimoine)
       // let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: json)
    }
}

