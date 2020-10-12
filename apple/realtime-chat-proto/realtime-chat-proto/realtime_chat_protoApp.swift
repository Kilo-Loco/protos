//
//  realtime_chat_protoApp.swift
//  realtime-chat-proto
//
//  Created by Kilo Loco on 10/12/20.
//

import Amplify
import AmplifyPlugins
import SwiftUI

@main
struct realtime_chat_protoApp: App {
    
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
            // API
            let models = AmplifyModels()
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: models))
            
            try Amplify.configure()
            
            print("Configured")
            
        } catch {
            print(error)
        }
        
    }
}
