//
//  LoginSectionView.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 15/11/2021.
//

import SwiftUI

struct LoginSectionView: View {
    @State var email = ""
    @State var isHomeActive = false

    var body: some View {
        VStack(alignment: .leading) {
            CustomTextField("Correo electronico", placeholder: "example@mail.com")

            CustomTextField("Contraseña", placeholder: "*****", isSecure: true)

            PrimaryButton("Iniciar sesión") {
                isHomeActive = true
            }

            Text("Iniciar sesión con redes sociales")
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .font(.subheadline)

            HStack(alignment: .center, spacing: 8) {
                SecondButton("Facebook")
                SecondButton("Twitter")
            }.frame(maxWidth: .infinity)

            NavigationLink(destination: HomeView(),
                           isActive: $isHomeActive,
                           label: { EmptyView() })
        }.padding(.top, 80)
    }
}
