//
//  ContentView.swift
//  siwa-swiftui-proto
//
//  Created by Kilo Loco on 3/8/21.
//

import Amplify
import AmplifyPlugins
import AuthenticationServices
import SwiftUI

enum AuthProvider: String {
    case signInWithApple
}

struct AppleUser: Codable {
    let id: String
    let firstName: String
    let lastName: String
    let email: String
    
    init?(appleCredentials: ASAuthorizationAppleIDCredential) {
        guard
            let firstName = appleCredentials.fullName?.givenName,
            let lastName = appleCredentials.fullName?.familyName,
            let email = appleCredentials.email
        else { return nil }
        
        self.id = appleCredentials.user
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
}

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        SignInWithAppleButton(.signUp) { request in
            request.requestedScopes = [.fullName, .email]
//            request.nonce
        } onCompletion: { result in
            switch result {
            case .success(let auth):
                switch auth.credential {
                case let appleIdCredential as ASAuthorizationAppleIDCredential:
                    if let appleUser = AppleUser(appleCredentials: appleIdCredential),
                       let appleUserData = try? JSONEncoder().encode(appleUser) {
                        
                        UserDefaults.standard.set(appleUserData, forKey: appleUser.id)
                    }
                    self.signUserIn(with: appleIdCredential.user)
                    
                default:
                    print(auth.credential)
                }
            case .failure(let error):
                print(error)
            }
        }
        .signInWithAppleButtonStyle(colorScheme == .dark ? .white : .black)
        .frame(height: 45)
        .padding()
        .onAppear(perform: attemptAutoSignIn)
    }
    
    func signUserIn(with userId: String) {
        guard
            let plugin = try? Amplify.Auth.getPlugin(for: AWSCognitoAuthPlugin().key),
            let authPlugin = plugin as? AWSCognitoAuthPlugin,
            case .awsMobileClient(let client) = authPlugin.getEscapeHatch()
        else { return }
        
        client.federatedSignIn(providerName: AuthProvider.signInWithApple.rawValue, token: userId) { (state, error) in
            if let error = error {
                print(error)
            } else if let state = state {
                print(state)
                print("Federated Sign In Success")
            }
        }
    }
    
    func attemptAutoSignIn() {
        guard
            let plugin = try? Amplify.Auth.getPlugin(for: AWSCognitoAuthPlugin().key),
            let authPlugin = plugin as? AWSCognitoAuthPlugin,
            case .awsMobileClient(let client) = authPlugin.getEscapeHatch(),
            let logins = client.logins().result,
            let appleId = logins[AuthProvider.signInWithApple.rawValue] as? String
        else { return }
        print("here")
        print(appleId)
        
        
        guard
            let appleUserData = UserDefaults.standard.data(forKey: appleId),
            let appleUser = try? JSONDecoder().decode(AppleUser.self, from: appleUserData)
        else { return }
        
        print(appleUser)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
