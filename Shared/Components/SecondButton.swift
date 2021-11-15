//
//  SecondButton.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 06/10/2021.
//

import SwiftUI

struct SecondButton: View {
    let title: String
    let action: () -> Void

    init(_ title: String, action: @escaping () -> Void = {}) {
        self.action = action
        self.title = title
    }

    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .font(.subheadline)
                .padding(10)
                .frame(maxWidth: .infinity)
        }.background(Color.blueGray)
            .cornerRadius(8)
    }
}
