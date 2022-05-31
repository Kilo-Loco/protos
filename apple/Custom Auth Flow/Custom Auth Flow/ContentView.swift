//
//  ContentView.swift
//  Custom Auth Flow
//
//  Created by Kilo Loco on 2/22/22.
//

import Amplify
import SwiftUI

struct ContentView: View {
    
    let username = "kiloloco"
    let email = "ifro555@hotmail.com"
    
    @State var confirmationCode = ""
    @State var challengeCode = ""
    
    var body: some View {
        VStack {
        
            Button("Sign Up") {
                signUp(username: username, email: email)
            }
            
            TextField("Confirmation Code", text: $confirmationCode)
            
            Button("Confirm Sign Up") {
                confirmSignUp(for: username, with: confirmationCode)
            }
            
            Button("Sign In") {
                signIn(username: username)
            }
            
            TextField("Challenge Code", text: $challengeCode)
            
            Button("Submit Challenge") {
                customChallenge(response: challengeCode)
            }
            
        }
    }
    
    func signUp(username: String, email: String) {
        let userAttributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
        Amplify.Auth.signUp(username: username, password: UUID().uuidString, options: options) { result in
            switch result {
            case .success(let signUpResult):
                if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
                    print("Delivery details \(String(describing: deliveryDetails))")
                } else {
                    print("Signup Complete")
                }
            case .failure(let error):
                print("An error occurred while registering a user \(error)")
            }
        }
    }
    
    func confirmSignUp(for username: String, with confirmationCode: String) {
        Amplify.Auth.confirmSignUp(for: username, confirmationCode: confirmationCode) { result in
            switch result {
            case .success:
                print("Confirm signUp succeeded")
            case .failure(let error):
                print("An error occurred while confirming sign up \(error)")
            }
        }
    }
    
    func signIn(username: String) {
        Amplify.Auth.signIn(username: username) { result in
            do {
                let r = try result.get()
            
                switch result {
                case .success:
                    if case .confirmSignInWithCustomChallenge(_) = r.nextStep {
                        // Ask the user to enter the custom challenge.
                        print("Enter custom challenge")
                    } else {
                        print("Sign in succeeded")
                    }
                case .failure(let error):
                    print("Sign in failed \(error)")
                }
            } catch {
                print(error)
            }
        }
    }
    
    func customChallenge(response: String) {
        Amplify.Auth.confirmSignIn(challengeResponse: response) { result in
            switch result {
            case .success:
                print("Confirm sign in succeeded")
            case .failure(let error):
                print("Confirm sign in failed \(error)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
