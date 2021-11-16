//
//  TabBarView.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 15/11/2021.
//

import SwiftUI

struct TabBarView: View {
    @State var selectedTab: Int = 2

    init() {
        UITabBar.appearance().barTintColor = UIColor(Color.white)
        UITabBar.appearance().backgroundColor = UIColor(Color.blueGray.opacity(0.6))
        UITabBar.appearance().isTranslucent = true
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Perfil")
                }.tag(0)

            HomeView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Juegos")
                }.tag(1)

            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Inicio")
                }.tag(2)

            HomeView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favoritos")
                }.tag(3)
        }.accentColor(.white)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
