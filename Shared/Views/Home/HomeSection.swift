//
//  HomeSection.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 21/11/2021.
//

import SwiftUI

struct HomeSection: View {
    let urlVideos: [String] = [
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256671638/movie480.mp4",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256720061/movie480.mp4",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256814567/movie480.mp4",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256801252/movie480.mp4",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/256757119/movie480.mp4"]

    var body: some View {
        ScrollView {
            Logo()
            SearchBar()
            PlayerCard(title: "LOS MÁS POPULARES",
                       description: "The Witcher3: Wild Hunt",
                       urlVideo: urlVideos[0])

            Title("CATEGORÍAS SUGERIDAS PARA TI")
                .padding(.top, 16)
            SuggestSection()

        }.padding(.horizontal, 10)
    }
}

private struct SuggestSection: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Button { } label: { CategoryCard(.defaultCategory) }
                Button { } label: { CategoryCard(.rpg) }
                Button { } label: { CategoryCard(.fps) }
                Button { } label: { CategoryCard(.openWorld) }
            }
        }
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
