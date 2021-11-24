//
//  PlayerCard.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 21/11/2021.
//

import SwiftUI
import AVKit

struct PlayerCard: View {
    @State var isPlayingVideo = false
    var title: String
    var url: String
    private var descriptionView: PlayerCardDescription

    init(title: String = "", description: String = "", urlVideo: String) {
        self.title = title
        url = urlVideo
        self.descriptionView = PlayerCardDescription(description)
    }

    var body: some View {
        VStack(spacing: 0) {
            if !title.isEmpty {
                Title(title)
            }

            ZStack {
                Image("placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Button {
                    isPlayingVideo = true
                } label: { Image(systemName: "play.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                }
            }

            descriptionView

        }

        NavigationLink(destination: VideoPlayer(player: AVPlayer(url: URL(string: url)!)),
                       isActive: $isPlayingVideo,
                       label: { EmptyView() })
    }
}

private struct PlayerCardDescription: View {
    var title: String

    init(_ title: String) {
        self.title = title
    }

    var body: some View {
        Text(title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(.horizontal, 10)
            .padding(.vertical, 12)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.blueGray)
            .cornerRadius(radius: 4, corners: [.bottomLeft, .bottomRight])
    }
}
