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

struct Humantopic : View {
    @Binding var human: Human
    @State var edit = false
    
    var body: some View {
        HStack(spacing:30) {
            Text(human.label).frame(width:200)
            Spacer()
            VStack(spacing:10) {
                Button(action: {edit = true},
                       label: {Text("détail")})
                .sheet(isPresented: $edit, content: {
                    HumanView($human)
                        .frame(minWidth:1200, minHeight:200)
                })
                
             /*   if comtopic.compte.contractuel.banque != nil {
                    Button(action:{topicedit = true})
                    {Text("navigation")}
                    .sheet(isPresented: $topicedit)
                    { ItemView($comtopic.nav) }
                }*/
            }.frame(width:120)
        }.frame(width:350, height: 20)
        .padding(5)
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
                        Humantopic(human:contact)
                    }
                    }.padding(10)
                }.frame(height: 250)
                    

            }.padding(10)
        
    }
}

struct Companytopic : View {
    @Binding var company: Company
    @State var edit = false
    
    var body: some View {
        HStack(spacing:30) {
            Text(company.label).frame(width:200)
            Spacer()
            VStack(spacing:10) {
                Button(action: {edit = true},
                       label: {Text("détail")})
                .sheet(isPresented: $edit, content: {
                    CompanyView($company)
                        .frame(minWidth:250, minHeight:200)
                })
                
             /*   if comtopic.compte.contractuel.banque != nil {
                    Button(action:{topicedit = true})
                    {Text("navigation")}
                    .sheet(isPresented: $topicedit)
                    { ItemView($comtopic.nav) }
                }*/
            }.frame(width:120)
        }.frame(minWidth:400, minHeight: 20)
        .padding(5)
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
                        Companytopic(company:contact)
                    }
                    }.padding(10)
                }.frame(height: 250)
                    

            }.padding(10)
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
