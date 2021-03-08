//
//  ContentView.swift
//  siwa-swiftui-proto
//
//  Created by Kilo Loco on 3/8/21.
//

import AuthenticationServices
import SwiftUI

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
        } onCompletion: { result in
            switch result {
            case .success(let auth):
                switch auth.credential {
                case let appleIdCredential as ASAuthorizationAppleIDCredential:
                    if let appleUser = AppleUser(appleCredentials: appleIdCredential), let appleUserData = try? JSONEncoder().encode(appleUser) {
                        
                        UserDefaults.standard.set(appleUserData, forKey: appleUser.id)
                    }
                    
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

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
