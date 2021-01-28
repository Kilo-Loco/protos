//
//  ContentView.swift
//  amplify-ios-sign-in-proto
//
//  Created by Kilo Loco on 1/28/21.
//

import Amplify
import SwiftUI

struct ContentView: View {
    
    @State var authStatus: String?
    
    var body: some View {
        VStack(spacing: 30) {
            if let authStatus = self.authStatus {
                Text(authStatus).bold()
            }
            
            Button("Get Status", action: fetchCurrentAuthSession)
            
            Button("Sign Up", action: signUp)
            
            Button("Confirm Sign Up", action: confirmSignUp)
            
            Button("Sign In", action: signIn)
        }
    }
    
    func fetchCurrentAuthSession() {
        Amplify.Auth.fetchAuthSession { result in
            switch result {
            case .success(let session):
                print("Is user signed in - \(session.isSignedIn)")
                
                if session.isSignedIn {
                    authStatus = "User is signed in"
                } else {
                    authStatus = "User is signed out"
                }
                
            case .failure(let error):
                print("Fetch session failed with error \(error)")
            }
        }
    }
    
    let username = "Kilo_Loco"
    let password = "Password1"
    let email = "kyleez@amazon.com"
    
    func signUp() {
        let userAttributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
        
        Amplify.Auth.signUp(username: username, password: password, options: options) { result in
            switch result {
            case .success(let signUpResult):
                if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
                    print("Delivery details \(String(describing: deliveryDetails))")
                    authStatus = "\(username) needs to be confirmed"
                    
                } else {
                    print("SignUp Complete")
                    authStatus = "Sign up completed"
                }
            case .failure(let error):
                print("An error occurred while registering a user \(error)")
            }
        }
    }
    
    let confirmationCode = "516567"
    func confirmSignUp() {
        Amplify.Auth.confirmSignUp(for: username, confirmationCode: confirmationCode) { result in
            switch result {
            case .success:
                print("Confirm signUp succeeded")
                authStatus = "\(username) has been confirmed"
                
            case .failure(let error):
                print("An error occurred while confirming sign up \(error)")
                authStatus = "\(username) could not be confirmed"
            }
        }
    }
    
    func signIn() {
        Amplify.Auth.signIn(username: username, password: password) { result in
            switch result {
            case .success:
                print("Sign in succeeded")
                authStatus = "\(username) signed in"
                
            case .failure(let error):
                print("Sign in failed \(error)")
                authStatus = "Failed to sign in \(username)"
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}













