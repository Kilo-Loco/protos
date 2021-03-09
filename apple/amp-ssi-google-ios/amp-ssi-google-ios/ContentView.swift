//
//  ContentView.swift
//  amp-ssi-google-ios
//
//  Created by Kilo Loco on 3/5/21.
//

import Amplify
import AmplifyPlugins
import SwiftUI

struct ContentView: View {
    
    @State var username = ""
    @State var email = ""
    @State var confirmationCode = ""
    
    let password = "password"
    
    var body: some View {
        VStack {
            TextField("username", text: $username)
            TextField("email", text: $email)
            Button("sign up", action: signUp)
            TextField("confirmation code", text: $confirmationCode)
            Button("confirm email", action: confirmEmail)
            Button("sign in", action: signIn)
            Button("sign out", action: signOut)
            
            Divider()
            
            Button("Custom sign in", action: customSignIn)
        }
        .onAppear(perform: getCurrentUser)
    }
    
    func getCurrentUser() {
//        Amplify.Auth.fetchUserAttributes { result in
//            print(try? result.get())
//        }
//        Amplify.Auth.fetchAuthSession { result in
//            print(result)
//        }
        guard let plugin = try? Amplify.Auth.getPlugin(for: AWSCognitoAuthPlugin().key) as? AWSCognitoAuthPlugin else { return }
        switch plugin.getEscapeHatch() {
        case .awsMobileClient(let client):
            print(client.isSignedIn)
        }
    }
    
    func signUp() {
        let options = AuthSignUpRequest.Options(
            userAttributes: [
                .init(.email, value: email)
            ]
        )
        Amplify.Auth.signUp(username: username, password: password, options: options) { result in
            print(try? result.get().nextStep)
        }
    }
    
    func confirmEmail() {
        Amplify.Auth.confirmSignUp(for: username, confirmationCode: confirmationCode) { result in
            print(try? result.get().isSignupComplete)
        }
    }
    
    func signIn() {
        Amplify.Auth.signIn(username: username, password: password) { result in
            print(try? result.get().isSignedIn)
        }
    }
    
    func signOut() {
        Amplify.Auth.signOut() { result in
            print("signed out")
        }
    }
    
    func customSignIn() {
        do {
            let plugin = try Amplify.Auth.getPlugin(for: AWSCognitoAuthPlugin().key) as! AWSCognitoAuthPlugin
            
            switch plugin.getEscapeHatch() {
            case .awsMobileClient(let client):
                print(client)
                client.federatedSignIn(providerName: "CustomAuth", token: "12345") { (userState, error) in
                    if let error = error {
                        print(error)
                    }
                    if let userState = userState {
                        print(userState)
                    }
                    
                }
                
            }
            
        } catch {
            print(error)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
