//
//  CustomTextField.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 06/10/2021.
//

import SwiftUI

struct CustomTextField: View {
    @State var text = ""
    
    let title: String
    let placeholder: String
    let isSecure: Bool
    
    init(_ title: String = "", placeholder: String = "", isSecure: Bool = false) {
        self.title = title
        self.placeholder = placeholder
        self.isSecure = isSecure
    }
    
    var body: some View {
        Text(title)
            .foregroundColor(.darkCyan)
        
        if isSecure {
            SecureField("", text: $text)
                .placeholder(when: text.isEmpty) {
                    Text(placeholder)
                        .font(.caption)
                        .accentColor(.gray)
                }
                .foregroundColor(.gray)
        } else {
            TextField("", text: $text)
                .placeholder(when: text.isEmpty) {
                    Text(placeholder)
                        .font(.caption)
                        .accentColor(.gray)
                }
                .foregroundColor(.gray)
        }
        
        Divider()
            .frame(height: 1)
            .background(Color.darkCyan)
            .padding(.bottom)
    }
}

