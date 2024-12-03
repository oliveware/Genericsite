//
//  Contacts.swift
//  Genericsite
//
//  Created by Herve Crespel on 03/12/2024.
//


import SwiftUI
import Oware


public struct Contacts: Codable {
    var contacts: [Contact] = []
    
    public init(_ json:String = ""){
        if json != "" {
            let jsonData = json.data(using: .utf8)!
            self = try! JSONDecoder().decode(Contacts.self, from: jsonData)
        }
    }
}

public struct ContactsView : View {
    @Binding var contacts:[Contact]
    
    public init(_ contacts:Binding<[Contact]>) {
        _contacts = contacts
    }
    
    public var body: some View {
        ScrollView{
            VStack{
                ForEach($contacts){
                    contact in
                    Text(contact.wrappedValue.label)
                }
            }
        }
    }
}
