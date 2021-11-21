//
//  HomeView.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 15/11/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.backgroundBlue.ignoresSafeArea()
            HomeSection()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewLayout(.sizeThatFits)
    }
}
