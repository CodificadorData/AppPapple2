//
//  HomeView.swift
//  AppPapple2
//
//  Created by Christian Morante on 23/01/25.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
    
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.blue]),
                startPoint: .top,
                endPoint: .bottom
            )
                .ignoresSafeArea()
            VStack {
                
                
                Text(":)")
                
                
                Button(action: {
                    print("¡Botón presionado!")
                }) {
                    Text("Login")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                
                
            }
            .foregroundStyle(Color.white)
        }
    }
        
}

#Preview {
    HomeView()
}
