//
//  SignUpView.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/4/20.
//

import SwiftUI

struct SignUpView: View {
    
    @EnvironmentObject var authService: AuthService
    
    @State private var username = String()
    @State private var email = String()
    @State private var password = String()
    
    var body: some View {
        ZStack {
            VStack {
                TextField("Username", text: $username)
                    .padding(8)
                    .border(Color.gray)
                
                TextField("Email", text: $email)
                    .padding(8)
                    .border(Color.gray)
                
                TextField("Password", text: $password)
                    .padding(8)
                    .border(Color.gray)
                
                Button("Sign Up", action: signUp)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.purple)
                    .cornerRadius(8)
            }
            .padding()
            
            VStack {
                Spacer()
                Button("Already have an account? Login.", action: authService.showLogin)
                    .foregroundColor(.purple)
            }
        }
    }
    
    private func signUp() {
        let credentials = SignUpCredentials(
            username: username,
            email: email,
            password: password
        )
        authService.signUp(with: credentials)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
