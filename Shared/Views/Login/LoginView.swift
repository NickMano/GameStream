//
//  LoginView.swift
//  Shared
//
//  Created by nicolas.e.manograsso on 04/10/2021.
//

import SwiftUI

struct LoginView: View {
    var intialTab: LoginTabOption

    init(_ intialTab: LoginTabOption = .loginOption) {
        self.intialTab = intialTab
    }

    var body: some View {
        NavigationView {
            ZStack {
                Color.backgroundBlue.ignoresSafeArea()

                VStack {
                    Logo()
                    LoginOptions(intialTab)
                    Spacer()
                }
                .padding(.horizontal, 20.0)
                .navigationBarHidden(true)
            }
        }.preferredColorScheme(.dark)
    }
}

private struct LoginOptions: View {
    @State var isLoginOption: Bool

    init(_ intialTab: LoginTabOption) {
        isLoginOption = intialTab == .loginOption
    }

    var body: some View {
        VStack {
            HStack {
                Button("Iniciar sesion") { isLoginOption = true }
                .foregroundColor(isLoginOption ? .white : .white.opacity(0.5))
                Spacer()
                Button("Registrarme") { isLoginOption = false }
                .foregroundColor( !isLoginOption ? .white : .white.opacity(0.5))
            }

            if isLoginOption {
                LoginSectionView()
            } else {
                RegisterSectionView()
            }
        }
    }
}

enum LoginTabOption {
    case loginOption
    case registerOption
}
