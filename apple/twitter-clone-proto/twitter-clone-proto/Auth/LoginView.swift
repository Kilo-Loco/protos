//
//  LoginView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/23/20.
//

import SwiftUI

fileprivate class LoginViewState: ObservableObject {
    @Published var handle = String()
    @Published var password = String()
    @Published var isPasswordVisible = false
}

struct LoginView: View {
    
    @EnvironmentObject var authService: AuthService
    
    @StateObject private var state = LoginViewState()
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("Log in to Wuphf")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                
                FormInputField(
                    placeholder: "Username",
                    text: $state.handle
                )
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                
                FormInputField(
                    placeholder: "Password",
                    text: $state.password,
                    isSecureEntryEnabled: !state.isPasswordVisible
                )
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                
                HStack {
                    Spacer()
                    
                    Button(action: { state.isPasswordVisible.toggle() }) {
                        Text("Reveal password")
                            .foregroundColor(.purple)
                    }
                }
                .padding(.trailing, 40)
                
                Spacer()
                
                Divider()
                HStack {
                    Spacer()
                    
                    Button(action: logIn) {
                        Text("Log in")
                            .fontWeight(.semibold)
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                }
                .padding(.horizontal, 40)
                Divider()
                
            }
            .navigationBarItems(
                leading: Button("Cancel", action: authService.showEntrySelection)
            )
        }
    }
    
    private func logIn() {
        let credentials = LoginCredentials(
            handle: state.handle,
            password: state.password
        )
        authService.login(with: credentials)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(AuthService())
    }
}
