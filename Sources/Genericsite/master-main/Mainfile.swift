//
//  File.swift
//  
//
//  Created by Herve Crespel on 11/08/2024.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var jsonText: UTType {
        UTType(importedAs: "public.json")
    }
}

public struct MainFile: FileDocument {
    public var sitemain = Sitemain()
    
   public init(_ string:String)  {
        do {
            guard let json = string.data(using: .utf8)
            else {
                throw CocoaError(.fileReadCorruptFile)
            }
            sitemain = try JSONDecoder().decode(Sitemain.self, from: json)
            
        }
        catch {
            print ("inexistant \(error)")
        }
    }

  public  static var readableContentTypes: [UTType] { [.jsonText] }

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
