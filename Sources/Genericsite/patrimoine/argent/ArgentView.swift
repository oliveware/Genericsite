//
//  ArgentView.swift
//
//
//  Created by Herve Crespel on 07/07/2024.
//

import SwiftUI
import Attribex
import Semantex

public struct ArgentView: View {
    @Binding var argent:Argent
   // @State var versement = Versement()
    @State var selectag = 1
    
    public init(_ argent:Binding<Argent>) {
        _argent = argent
    }
    
    public var body: some View {
        TabView(selection: $selectag)
        {
            AvoirView($argent.avoir)
                .tabItem{Text("tous les comptes")}.tag(1)
           //Text("inscrire une transaction")
            DébitCrédit()
                .tabItem{Text("inscrire")}.tag(2)
            //}.frame(minHeight:500)
  
           
        }//.frame(width:840)
            .padding(.bottom,10)
            .padding(.top,10)
    }

    func delete(_ id:Int) {
      //  argent.delete(id)
    }
   
}

struct ArgentPreview: View {
    @State var argent = Argent(Comtopic(nil))
    var body: some View {
        ArgentView( $argent )
    }
}

#Preview("nil") {
    ArgentPreview(argent:Argent(Comtopic(nil)))
}

#Preview("sample") {
 //   ArgentPreview(argent:Argent(argentmain).intro)
}
