//
//  CreateAccountView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/19/20.
//

import SwiftUI

class CreateAccountViewState: ObservableObject {
    @Published var handle = String()
    @Published var displayName = String()
    @Published var email = String()
    @Published var password = String()
}

struct CreateAccountView: View {
    
    @EnvironmentObject var authService: AuthService
    @StateObject private var state = CreateAccountViewState()
    
    var body: some View {
        NavigationView {
            
            VStack {
                Spacer()
                
                Text("Create your account")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 50)
                
                FormInputField(placeholder: "Username", text: $state.handle)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 10)
                FormInputField(placeholder: "Name", text: $state.displayName)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 10)
                FormInputField(placeholder: "Email", text: $state.email)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 10)
                FormInputField(placeholder: "Password", text: $state.password, isSecureEntryEnabled: true)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 10)
                
                Spacer()
                
                HStack {
                    Spacer()
                    Button(action: signUp) {
                        Text("Next")
                            .fontWeight(.semibold)
                    }
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
                .padding()
            }
            
            .navigationBarTitle(Text("🐺"), displayMode: .inline)
            .navigationBarItems(
                leading: Button("Cancel", action: authService.showEntrySelection)
            )
        }
        
    }
    
    func signUp() {
        let credentials = SignUpCredentials(
            handle: state.handle,
            displayName: state.displayName,
            email: state.email,
            password: state.password
        )
        authService.signUp(with: credentials)
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
