//
//  HomeSection.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 21/11/2021.
//

import SwiftUI

struct HomeSection: View {
    var body: some View {
        ScrollView {
            Logo()
            SearchBar()
            PlayerCard(title: "LOS MÁS POPULARES",
                       description: "The Witcher3: Wild Hunt",
                       urlVideo: urlVideos[0])
        }.padding(.horizontal, 10)
    }
}

struct HomeSection_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.backgroundBlue.ignoresSafeArea()
            HomeSection()
        }
    }
}
