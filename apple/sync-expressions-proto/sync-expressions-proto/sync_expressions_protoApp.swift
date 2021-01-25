//
//  sync_expressions_protoApp.swift
//  sync-expressions-proto
//
//  Created by Kilo Loco on 1/10/21.
//

import Amplify
import AmplifyPlugins
import SwiftUI

@main
struct sync_expressions_protoApp: App {
    
    public init() {
        configureAmplify()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    func configureAmplify() {
        
        let syncExpression = DataStoreSyncExpression.syncExpression(TVSeries.schema) {
            let rating = UserDefaults.standard.integer(forKey: "preferredRating")
            
            guard rating > 0 else {
                return QueryPredicateConstant.all
            }
            
            return TVSeries.keys.rating >= 4
        }

        let config = DataStoreConfiguration.custom(syncExpressions: [syncExpression])
        let dataStorePlugin = AWSDataStorePlugin(modelRegistration: AmplifyModels(), configuration: config)
        let apiPlugin = AWSAPIPlugin(modelRegistration: AmplifyModels())

        do {
            try Amplify.add(plugin: dataStorePlugin)
            try Amplify.add(plugin: apiPlugin)
            try Amplify.configure()
            print("Initialized Amplify");
        } catch {
            print("Could not initialize Amplify: \(error)")
        }
        
        Amplify.DataStore.clear()
    }
}
