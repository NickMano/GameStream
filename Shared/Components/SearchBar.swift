//
//  SearchBar.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 21/11/2021.
//

import SwiftUI

struct SearchBar: View {
    @State var textToSearch = ""

    var body: some View {
        HStack {
            Button(action: search) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
                    .opacity(textToSearch.isEmpty ? 0.5 : 1)
            }.padding(.leading, 4)

            ZStack {
                if textToSearch.isEmpty {
                    Text("Buscar un video")
                        .foregroundColor(.white)
                        .opacity(0.5)
                }

                TextField("", text: $textToSearch)
                    .foregroundColor(.white)

            }
        }
        .padding(.all, 12.0)
        .background(Color.blueGray)
        .clipShape(Capsule())
        .padding(.bottom, 10)
    }

    func search() { }
}
