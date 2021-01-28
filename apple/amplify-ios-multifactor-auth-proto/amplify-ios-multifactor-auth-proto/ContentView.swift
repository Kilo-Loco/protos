//
//  ContentView.swift
//  amplify-ios-multifactor-auth-proto
//
//  Created by Kilo Loco on 1/28/21.
//

import Amplify
import SwiftUI

struct ContentView: View {
    
    @State var authStatus: String?
    @State var emailCode = ""
    @State var smsCode = ""
    
    var body: some View {
        VStack(spacing: 50) {
            if let authStatus = self.authStatus {
                Text(authStatus).bold()
            }
            
            Button("Get Status", action: fetchCurrentAuthSession)
            
            Button("Sign Up", action: signUp)
            
            VStack {
                TextField("Email code", text: $emailCode)
                    .frame(width: 200)
                Button("Confirm Sign Up", action: confirmSignUp)
            }
            
            Button("Sign In", action: signIn)
            
            VStack {
                TextField("SMS code", text: $smsCode)
                    .frame(width: 200)
                Button("Confirm Sign In", action: confirmSignIn)
            }
        }
    }
    
    func fetchCurrentAuthSession() {
        Amplify.Auth.fetchAuthSession { result in
            switch result {
            case .success(let session):
                if session.isSignedIn {
                    authStatus = "User is signed in"
                } else {
                    authStatus = "User is signed out"
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    let username = "Kilo_Loco"
    let password = "Password1"
    let email = "kyleez@amazon.com"
    let phoneNumber = ProcessInfo.processInfo.environment["PHONE_NUMBER"]!
    
    func signUp() {
        let userAttributes = [
            AuthUserAttribute(.email, value: email),
            AuthUserAttribute(.phoneNumber, value: phoneNumber)
        ]
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
        Amplify.Auth.signUp(username: username, password: password, options: options) { result in
            switch result {
            case .success(let signUpResult):
                if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
                    print("Delivery details \(String(describing: deliveryDetails))")
                    authStatus = "\(username) needs to be confirmed"
                    
                } else {
                    authStatus = "Sign up completed"
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func confirmSignUp() {
        Amplify.Auth.confirmSignUp(for: username, confirmationCode: emailCode) { result in
            switch result {
            case .success:
                authStatus = "\(username) has been confirmed"
                
            case .failure(let error):
                print(error)
                authStatus = "\(username) could not be confirmed"
            }
        }
    }
    
    func signIn() {
        Amplify.Auth.signIn(username: username, password: password) { result in
            switch result {
            case .success(let signInResult):
                
                if signInResult.isSignedIn {
                    authStatus = "Signed in as \(username)"
                } else {
                    authStatus = "Sent SMS code"
                }
                
            case .failure(let error):
                print(error)
                authStatus = "Failed to sign in \(username)"
            }
        }
    }
    
    func confirmSignIn() {
        Amplify.Auth.confirmSignIn(challengeResponse: smsCode) { result in
            switch result {
            case .success:
                authStatus = "Signed in as \(username)"
                
            case .failure(let error):
                print(error)
                authStatus = "Wrong SMS code"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
