//
//  AuthView.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/3/20.
//

import SwiftUI

struct AuthView: View {
    
    @EnvironmentObject var authService: AuthService
    
    var body: some View {
        switch authService.state {
        case .login:
            LoginView()
                .environmentObject(authService)
            
        case .signUp:
            SignUpView()
                .environmentObject(authService)
            
        case .confirmation:
            ConfirmationView()
                .environmentObject(authService)
        default:
            EmptyView()
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
