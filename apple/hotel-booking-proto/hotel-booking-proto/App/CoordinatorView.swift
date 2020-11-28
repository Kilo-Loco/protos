//
//  CoordinatorView.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/3/20.
//

import SwiftUI

// MVSS
/**
 
 Model
 View
 Source of Truth
 Services
 */

struct CoordinatorView: View {
    
    @StateObject private var authService = AuthService()
    
    var body: some View {
        switch authService.state {
        case .session:
            SessionView()
                .environmentObject(authService)
        default:
            AuthView()
                .environmentObject(authService)
                .onAppear(perform: authService.getCurrentUser)
        }
    }
    
    
}

struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView()
    }
}
