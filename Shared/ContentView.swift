//
//  ContentView.swift
//  Shared
//
//  Created by nicolas.e.manograsso on 04/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.backgroundBlue.ignoresSafeArea()
            
            VStack {
                Image("appLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 240)
                    .padding(.bottom, 50)
                loginRegister()
                
                Spacer()
            }
            .padding(.horizontal, 20.0)
            
        }.padding(.top, 10)
    }
}

struct loginRegister: View {
    @State var isLoginOption = false
    
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
                LoginView()
            } else {
                RegisterView()
            }
        }
    }
    
    
}

struct LoginView: View {
    @State var email = ""
    var action = { }
    
    var body: some View {
        VStack(alignment: .leading) {
            CustomTextField("Correo electronico", placeholder: "example@mail.com")
            
            CustomTextField("Contraseña", placeholder: "*****", isSecure: true)
            
            PrimaryButton("Iniciar sesión")
            
            Text("Iniciar sesión con redes sociales")
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .font(.subheadline)
            
            HStack(alignment: .center, spacing: 8) {
                SecondButton("Facebook")
                SecondButton("Twitter")
            }.frame(maxWidth: .infinity)
        }.padding(.top, 80)
    }
}

struct RegisterView: View {
    var body: some View {
        VStack {
            Text("Elije una foto de perfil")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .padding(.top, 48)
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
        }
    }
}

func takePhoto() {
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
