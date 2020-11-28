//
//  LoginView.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/4/20.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var authService: AuthService
    
    @State private var username = String()
    @State private var password = String()
    
    var body: some View {
        ZStack {
            VStack {
                TextField("Username", text: $username)
                    .padding(8)
                    .border(Color.gray)
                
                TextField("Password", text: $password)
                    .padding(8)
                    .border(Color.gray)
                
                Button("Login", action: login)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.purple)
                    .cornerRadius(8)
            }
            .padding()
            
            
            VStack {
                Spacer()
                Button("Don't have an account? Sign up.", action: authService.showSignUp)
                    .foregroundColor(.purple)
            }
        }
        
    }
    
    private func login() {
        let loginCredentials = LoginCredentials(
            username: username,
            password: password
        )
        authService.login(with: loginCredentials)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
