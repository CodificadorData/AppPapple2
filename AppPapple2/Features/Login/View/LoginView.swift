//
//  LoginView.swift
//  AppPapple2
//
//  Created by Christian Morante on 22/01/25.
//

import SwiftUI
import Kingfisher

struct LoginView: View {
    
    @StateObject private var loginViewModel = LoginViewModel()

    var body: some View {
    
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.blue]),
                startPoint: .top,
                endPoint: .bottom
            )
                .ignoresSafeArea()
            VStack {
                
                KFImage(URL(string: "https://cdn-icons-png.flaticon.com/512/295/295128.png"))
                    .placeholder { // Placeholder mientras se carga
                        ProgressView()
                    }
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: .infinity, height: 300)
                
                Text("LOGIN")
                
                TextField("Email", text: $loginViewModel.emailInput) // Campo de texto
                    .textFieldStyle(RoundedBorderTextFieldStyle()) // Estilo redondeado
                    .padding()
                    .cornerRadius(8) // Bordes redondeados opcionales
                
                TextField("Password", text: $loginViewModel.passwordInput) // Campo de texto
                    .textFieldStyle(RoundedBorderTextFieldStyle()) // Estilo redondeado
                    .padding()
                    .cornerRadius(8) // Bordes redondeados opcionales
                
                Button(action: {
                    print("¡Botón presionado!")
                    loginViewModel.validateUser()
                }) {
                    Text("Login")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                
                HStack {
                    Text("Don't have an account?")
                    Link("Registrate", destination: URL(string: "https://www.apple.com")!)
                        .font(.headline)
                        .foregroundColor(.red)
                        .underline()
                }
                
            }
            .foregroundStyle(Color.white)
        }
    }
        
}

#Preview {
    LoginView()
}
