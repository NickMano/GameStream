//
//  LoginView.swift
//  Shared
//
//  Created by nicolas.e.manograsso on 04/10/2021.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.backgroundBlue.ignoresSafeArea()

                VStack {
                    Image("appLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 240)
                        .padding(.bottom, 24)
                        .padding(.top, 12)
                    LoginOptions()
                    Spacer()
                }
                .padding(.horizontal, 20.0)
                .navigationBarHidden(true)
            }
        }.preferredColorScheme(.dark)
    }
}

private struct LoginOptions: View {
    @State var isLoginOption = true

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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .previewLayout(.sizeThatFits)
    }
}
