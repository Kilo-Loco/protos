//
//  amplify_ios_multifactor_auth_protoApp.swift
//  amplify-ios-multifactor-auth-proto
//
//  Created by Kilo Loco on 1/28/21.
//

import Amplify
import AmplifyPlugins
import SwiftUI

@main
struct amplify_ios_multifactor_auth_protoApp: App {
    init() {
        configureAmplify()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    private func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("Amplify configured with auth plugin")
        } catch {
            print("Failed to initialize Amplify with \(error)")
        }
    }
}
