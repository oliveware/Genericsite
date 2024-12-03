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
    
    @State var liste:[Contact] = []
    @State var selected:Contact?
    
    public init(_ contacts:Binding<[Contact]>) {
        _contacts = contacts
    }
    
    public var body: some View {
        HStack{
            VStack{
                HStack(spacing:10){
                    Button(action:humanlist)
                    {Image(systemName: "figure.stand.dress.line.vertical.figure")}
                    Button(action:companylist)
                    {Image(systemName: "building")}
                }
                
                    VStack{
                        ForEach(0..<liste.count, id:\.self){
                            index in
                            Button(action:{selected = liste[index]})
                            {Text(liste[index].label).frame(width:250)}
                            
                        }
                    }
                
            }
            if let contact:Binding<Contact> = Binding($selected) {
                ContactView(contact)
            } else {
                Text("choisir un contact")
            }
        }
    }
    
    func humanlist() {
        liste = []
        for contact in contacts {
            if contact.ishuman {
                liste.append(contact)
            }
        }
    }
    func companylist() {
        liste = []
         for contact in contacts {
            if !contact.ishuman {
                liste.append(contact)
            }
        }
        
    }
}
