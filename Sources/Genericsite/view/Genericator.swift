//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 28/01/2024.
//

import SwiftUI

// Bouton pour générer un site fonctionnant avec generic
struct Genericator: View {
    @State var site: Genericsite
    @State var changename = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Site").font(.title2)
                Spacer()
                if changename {
                    HStack {
                        Text("http://pi.inwani.org/")
                        TextField("nouveau nom : ", text: $site.name)
                        Text(".html")
                    }
                    Button(action: { changename = false }){
                        Text(site.name == "" ? "annuler" : "valider")
                    }
                } else {
                    if changename {
                        Button("changer", action: { changename = true })
                    }
                    Text(site.name).frame(width:300)
                }
            }.padding(10).border(Color.gray)
        }
    }
    
}

#Preview {
    Genericator(site:Genericsite())
}
