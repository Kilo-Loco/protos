//
//  Custom_Auth_FlowApp.swift
//  Custom Auth Flow
//
//  Created by Kilo Loco on 2/22/22.
//

import SwiftUI
import Amplify
import AWSCognitoAuthPlugin

@main
struct Custom_Auth_FlowApp: App {
    
    init() {
        configureAmplify()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("Configured amplify")
        } catch {
            print("Failed \(error)")
        }
    }
}
