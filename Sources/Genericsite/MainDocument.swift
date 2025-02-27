//
//  File.swift
//  
//
//  Created by Herve Crespel on 11/08/2024.
//

import SwiftUI
import UniformTypeIdentifiers
import Oware
import Fichiers

extension UTType {
    static var jsonSitemain: UTType {
        UTType(importedAs: "public.json")
    }
}

public struct MainDocument: FileDocument {
    public var sitemain = Sitemain()
    
    public init(_ repertoire:String,_ filename:String) {
        let fichier = Fichierjson(repertoire, filename)
        sitemain = fichier.read() ?? sitemain
    }
    
    public init(_ site:Sitemain = Sitemain()) {
        sitemain = site
    }
    
    public init(_ avoir:Avoir) {
        sitemain = Sitemain(avoir)  //, contexte)
    }
    

  public  static var readableContentTypes: [UTType] { [.jsonSitemain] }

   public init(configuration: ReadConfiguration) throws {
        guard let json = configuration.file.regularFileContents
             //, let string = String(data: data, encoding: .utf8)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        //text = string
        sitemain = try JSONDecoder().decode(Sitemain.self, from: json)
    }
    
   public func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let json = try JSONEncoder().encode(sitemain)
       // let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: json)
    }
}
