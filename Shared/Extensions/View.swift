//
//  View.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 06/10/2021.
//

import SwiftUI

extension View {
    func placeholder<Content: View>( when shouldShow: Bool,
                                     alignment: Alignment = .leading,
                                     @ViewBuilder placeholder: () -> Content) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
