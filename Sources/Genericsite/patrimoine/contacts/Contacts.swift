//
//  Contacts.swift
//  Genericsite
//
//  Created by Herve Crespel on 03/12/2024.
//


import SwiftUI
import Oware

public struct ContactsView : View {
    @Binding var contexte: Contexte
    
    @State var human :Human?
    @State var company: Company?
    
    public init(_ contexte:Binding<Contexte>) {
        _contexte = contexte
    }
    
    public var body: some View {
        HStack(alignment:.top, spacing:30){
            GroupBox("humains") {
                VStack(alignment: .center) {
                    ScrollView {
                        ForEach(contexte.humans){
                            contact in
                            Button(action:{human = contact})
                            {Text(contact.label).frame(width:200)}
                        }.padding(10)
                    }.frame(height: 150)
                    if let contact : Binding<Human> = Binding($human) {
                        HumanView(contact)
                    } else {
                        Text("choisir un contact")
                    }
                }.padding(10)
            }
            GroupBox("entreprises") {
                VStack(alignment: .center) {
                    ScrollView {
                        ForEach(contexte.companies){
                            contact in
                            Button(action:{company = contact})
                            {Text(contact.label).frame(width:200)}
                        }.padding(10)
                    }.frame(height: 150)
               
                    if let contact : Binding<Company> = Binding($company) {
                        CompanyView(contact)
                    } else {
                        Text("choisir un contact")
                    }
                }.padding(10)
            }
        }
    }
}
