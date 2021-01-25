//
//  swiftui_mvvm_protoApp.swift
//  swiftui-mvvm-proto
//
//  Created by Kilo Loco on 12/22/20.
//

import SwiftUI

@main
struct swiftui_mvvm_protoApp: App {
    var body: some Scene {
        WindowGroup {
            UsersView(viewModel: .init())
        }
    }
}
