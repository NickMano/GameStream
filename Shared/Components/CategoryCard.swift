//
//  CategoryCard.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 24/11/2021.
//

import SwiftUI

struct CategoryCard: View {
    var category: CategoryType

    init(_ category: CategoryType = .defaultCategory) {
        self.category = category
    }

    var body: some View {
        VStack {
            Image(category.imageName)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.darkCyan)
                .frame(width: 32, height: 32)
            Text(category.title)
                .foregroundColor(.darkCyan)
                .fontWeight(.bold)
        }
        .frame(width: 195, height: 109)
        .background(Color.blueGray)
        .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

enum CategoryType {
    case defaultCategory
    case rpg
    case fps
    case openWorld

    var imageName: String {
        switch self {
        case .defaultCategory:
            return "gameController"
        case .rpg:
            return "rpg"
        case .fps:
            return "fps"
        case .openWorld:
            return "openWorld"
        }
    }

    var title: String {
        switch self {
        case .defaultCategory:
            return "CATEGORY"
        case .rpg:
            return "RPG"
        case .fps:
            return "FPS"
        case .openWorld:
            return "OPEN WORLD"
        }
    }
}
