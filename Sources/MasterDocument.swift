//
//  MasterDocument.swift
//  Genericsite
//
//  Created by Herve Crespel on 01/10/2024.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var jsonText: UTType {
        UTType(importedAs: "public.json")
    }
}

public struct MainDocument: FileDocument {
    public var sitemaster : Sitemaster
    
    public init(_ site:Sitemaster) {
        sitemaster = site
    }
    public init() {
        sitemaster = Sitemaster()
    }

  public  static var readableContentTypes: [UTType] { [.jsonText] }

   public init(configuration: ReadConfiguration) throws {
        guard let json = configuration.file.regularFileContents
             //, let string = String(data: data, encoding: .utf8)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        //text = string
        sitemaster = try JSONDecoder().decode(Sitemaster.self, from: json)
    }
    
   public func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let json = try JSONEncoder().encode(sitemaster)
       // let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: json)
    }
}
