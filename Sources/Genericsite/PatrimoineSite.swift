//
//  PatrimoineSite.swift
//  Genericsite
//
//  Created by Herve Crespel on 09/12/2024.
//
import SwiftUI
import UniformTypeIdentifiers

public struct PatrimoineSite: FileDocument {
    public var sitemain: Sitemain
    //var argent : Argent

    public init(_ sitemain:Sitemain) {
        self.sitemain = sitemain
        //argent = Argent(sitemain)
    }

  public static var readableContentTypes: [UTType] { [.jsonText] }

   public init(configuration: ReadConfiguration) throws {
        guard let json = configuration.file.regularFileContents
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        sitemain = try JSONDecoder().decode(Sitemain.self, from: json)
       //argent = Argent(sitemain)
    }

   public func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let json = try JSONEncoder().encode(sitemain)
       // let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: json)
    }
}
