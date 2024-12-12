//
//  Contacts.swift
//  Genericsite
//
//  Created by Herve Crespel on 03/12/2024.
//


import SwiftUI
import Oware

public struct ContactView : View {
    @Binding var contexte: Contexte

    public init(_ contexte:Binding<Contexte>) {
        _contexte = contexte
    }
    
    public var body: some View {
        HStack(alignment:.top, spacing:30){
            HumanContacts($contexte.humans)
            CompanyContacts($contexte.companies)
        }
    }
}



struct ContactPreview: View {
    @State var context: Contexte = Patrimoine(patrimoinesample).contexte
    
    var body: some View {
        ContactView($context)
    }
}

#Preview("contexte"){
    ContactPreview()
}

