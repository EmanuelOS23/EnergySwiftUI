//
//  ContentView.swift
//  ProjetoFinalApp
//
//  Created by Turma01-7 on 02/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            InitialScreen()
                .tabItem{
                    Label("Inicio", systemImage: "house")
                }
            DevicesScreen()
                .tabItem{
                    Label("Dispositivos", systemImage: "washer.fill")
                }
            
            TipsScreen()
                .tabItem{
                    Label("Dicas", systemImage: "lightbulb.fill")
                        
                }
            
            
        }
        .tint(Color("Icons"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


