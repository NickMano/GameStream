//
//  Title.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 24/11/2021.
//

import SwiftUI

struct Title: View {
    var text: String

    init(_ text: String) {
        self.text = text.uppercased()
    }

    var body: some View {
        Text(text)
            .frame(minWidth: 300,
                   maxWidth: .infinity,
                   minHeight: 20.5,
                   alignment: .leading)
            .foregroundColor(.white)
            .padding(.vertical, 18)
    }
}
