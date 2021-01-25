//
//  ContentView.swift
//  custom-auth
//
//  Created by Kilo Loco on 1/20/21.
//

import Amplify
import AmplifyPlugins
import SwiftUI

struct ContentView: View {
    
    
    init() {
        configureAmplify()
    }
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    private func configureAmplify() {
        do {
            
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("configured amplify")
            
            let plugin = try Amplify.Auth.getPlugin(for: "awsCognitoAuthPlugin") as! AWSCognitoAuthPlugin
            guard case .awsMobileClient(let client) = plugin.getEscapeHatch() else {
                print("Failed to fetch escape hatch")
                return
            }

//            client.federatedSignIn(providerName: "MY_CUSTOM_PROVIDER", token: "abc") { (userState, error) in
//                if let error = error {
//                    print("Error:", error)
//                } else if let userState = userState {
//                    print("Federated sign in successful", userState)
//                } else {
//                    print("User state is nil")
//                }
//            }
            
//            client.signOut()
            
            
            print("is signed in:", client.isSignedIn)
            
        } catch {
            print(error)
        }
    }
    
    func getEscapeHatch() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
