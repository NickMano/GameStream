//
//  PrimaryButton.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 06/10/2021.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void

    init(_ title: String, action: @escaping () -> Void = {}) {
        self.action = action
        self.title = title
    }

    var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
                .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke()
                            .foregroundColor(.darkCyan)
                            .shadow(color: .darkCyan, radius: 12)
                            )
        }.padding(.bottom, 60)
    }
}
