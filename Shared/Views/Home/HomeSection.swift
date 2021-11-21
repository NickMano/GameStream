//
//  HomeSection.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 21/11/2021.
//

import SwiftUI

struct HomeSection: View {
    var body: some View {
        VStack {
            Logo()
            SearchBar()
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
