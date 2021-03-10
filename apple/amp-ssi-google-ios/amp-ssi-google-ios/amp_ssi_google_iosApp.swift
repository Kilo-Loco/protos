//
//  amp_ssi_google_iosApp.swift
//  amp-ssi-google-ios
//
//  Created by Kilo Loco on 3/5/21.
//

import Amplify
import AmplifyPlugins
import SwiftUI

@main
struct amp_ssi_google_iosApp: App {
    
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
            print("amplify configured")
        } catch {
            print(error)
        }
    }
}
