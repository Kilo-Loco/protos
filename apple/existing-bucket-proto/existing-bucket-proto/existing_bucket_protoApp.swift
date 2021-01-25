//
//  existing_bucket_protoApp.swift
//  existing-bucket-proto
//
//  Created by Kilo Loco on 1/18/21.
//

import Amplify
import AmplifyPlugins
import SwiftUI

@main
struct existing_bucket_protoApp: App {
    
    init() {
        configureAmplify()
//        signUp()
//        confirmEmail()
//        signIn()
//        signOut()
        checkSession()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.configure()
            print("Amplify configured with storage plugin")
        } catch {
            print("Failed to initialize Amplify with \(error)")
        }
    }
    
    let username = "kiloloco"
    let password = "Password1"
    let email = "ifro555@hotmail.com"
    
    func signUp() {
        let emailAttribute = AuthUserAttribute(.email, value: email)
        let options = AuthSignUpRequest.Options(userAttributes: [emailAttribute])
        
        Amplify.Auth.signUp(username: username, password: password, options: options) { result in
            do {
                let signUpResult = try result.get()
                print(signUpResult)
                
            } catch {
                print(error)
            }
        }
    }
    
    func confirmEmail() {
        Amplify.Auth.confirmSignUp(for: username, confirmationCode: "694665") { result in
            do {
                let confirmResult = try result.get()
                print(confirmResult)
            } catch {
                print(error)
            }
        }
    }
    
    func signIn() {
        Amplify.Auth.signIn(username: username, password: password) { result in
            do {
                let signInResult = try result.get()
                print(signInResult)
            } catch {
                print(error)
            }
        }
    }
    
    func signOut() {
        Amplify.Auth.signOut { result in
            print(result)
        }
    }
    
    func checkSession() {
        let isSignedIn = Amplify.Auth.getCurrentUser() != nil
        print("IS SIGNED IN: \(isSignedIn)")
    }
    
}
