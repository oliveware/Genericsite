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

    public init(_ contexte:Binding<Contexte>) {
        _contexte = contexte
    }
    
    public var body: some View {
        HStack(alignment:.top, spacing:30){
            HumanContact($contexte.humans)
            CompanyContact($contexte.companies)
        }
    }
}

struct HumanContact : View {
    @Binding var contacts: [Human]
    @State var onsheet = false
    
    init(_ contacts:Binding<[Human]>) {
        _contacts = contacts
    }
    
    public var body: some View {
        GroupBox("humains") {
            VStack(alignment: .center) {
                ScrollView {
                    ForEach($contacts){
                        contact in
                        Button(action:{onsheet = true})
                        {Text(contact.wrappedValue.label).frame(width:200)}
                            .sheet(isPresented: $onsheet){
                                HumanView(contact)}
                    }.padding(10)
                }.frame(height: 150)
                    

            }.padding(10)
        }
    }
}

struct CompanyContact : View {
    @Binding var contacts: [Company]
    @State var onsheet = false
    
    init(_ contacts:Binding<[Company]>) {
        _contacts = contacts
    }
    
    public var body: some View {
        GroupBox("entreprises") {
            VStack(alignment: .center) {
                ScrollView {
                    ForEach($contacts){
                        contact in
                        Button(action:{onsheet = true})
                        {Text(contact.wrappedValue.label).frame(width:200)}
                            .sheet(isPresented: $onsheet){
                                CompanyView(contact)}
                    }.padding(10)
                }.frame(height: 150)
                    

            }.padding(10)
        }
    }
}

var contexte = Patrimoine(patrimoinesample).contexte

struct HumanContactPreview: View {
    @State var contacts: [Human] = contexte.humans
    
    var body: some View {
        HumanContact($contacts)
    }
}

struct CompanyContactPreview: View {
    @State var contacts: [Company] = contexte.companies
    
    var body: some View {
        CompanyContact($contacts)
    }
}

struct ContactPreview: View {
    @State var context: Contexte = contexte
    
    var body: some View {
        ContactsView($context)
    }
}

#Preview("contexte"){
    ContactPreview()
}

#Preview("humains"){
    HumanContactPreview()
}

#Preview("entreprises"){
    CompanyContactPreview()
}
