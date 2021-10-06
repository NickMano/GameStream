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
            }
            .padding(.horizontal, 20.0)
        }
    }
}

struct loginRegister: View {
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
                LoginView()
            } else {
                RegisterView()
            }
        }
    }
    
    
}

struct LoginView: View {
    @State var email = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            CustomTextField(title: "Correo electronico", placeholder: "example@mail.com")
            
            CustomTextField(title: "Contraseña", isSecure: true)
        }.padding(.top, 80)
    }
}

struct RegisterView: View {
    var body: some View {
        VStack {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
