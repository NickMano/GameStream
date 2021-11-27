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

            SuggestSection()

            Title("recomendado para ti")
                .padding(.top, 16)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Button { } label: { GameCoverImage("video-games-1") }
                    Button { } label: { GameCoverImage("video-games-2") }
                    Button { } label: { GameCoverImage("video-games-3") }
                    Button { } label: { GameCoverImage("video-games-4") }
                }
            }

        }.padding(.horizontal, 10)
    }
}

private struct SuggestSection: View {
    var body: some View {
        VStack {
            Title("CATEGORÍAS SUGERIDAS PARA TI")
                .padding(.top, 16)

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
}

private struct GameCoverImage: View {
    private let name: String

    init(_ name: String) {
        self.name = name
    }

    var body: some View {
        Image(name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 128)
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
