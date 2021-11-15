//
//  TabBarView.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 15/11/2021.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Perfil")
                }

            HomeView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Juegos")
                }

            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Inicio")
                }

            HomeView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favoritos")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
