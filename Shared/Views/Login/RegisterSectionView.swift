//
//  RegisterSectionView.swift
//  GameStream
//
//  Created by nicolas.e.manograsso on 15/11/2021.
//

import SwiftUI

struct RegisterSectionView: View {
    func takePhoto() { }

    var body: some View {
        ScrollView {
            VStack {
                Text("Elije una foto de perfil")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.top, 24)
                Text("Puedes cambiar o elegirla más adelante")
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .opacity(0.5)
                    .font(.subheadline)

                Button(action: takePhoto) {
                    ZStack {
                        Circle()
                            .frame(width: 85, height: 85)
                            .foregroundColor(.white)
                            .opacity(0.5)
                        Image(systemName: "camera")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                            .frame(width: 30)
                    }
                }
            }.padding(.bottom, 48)

            VStack(alignment: .leading) {

                CustomTextField("Correo electronico*", placeholder: "example@mail.com")
                CustomTextField("Contraseña*", placeholder: "*****", isSecure: true)
                CustomTextField("Confirmar contraseña*", placeholder: "*****", isSecure: true)

            }

            VStack {
                PrimaryButton("Registrarme")

                Text("Regístrarme con redes sociales")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .font(.subheadline)

                HStack(alignment: .center, spacing: 8) {
                    SecondButton("Facebook")
                    SecondButton("Twitter")
                }.frame(maxWidth: .infinity)
            }.padding(.bottom, 24)
        }
    }
}
