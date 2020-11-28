//
//  AuthView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/27/20.
//

import SwiftUI

struct AuthView: View {
    
    @EnvironmentObject var authService: AuthService
    
    var body: some View {
        switch authService.flowState {
        case .signUp:
            CreateAccountView()
        case .verify(let email):
            VerificationCodeView(email: email)
        case .login:
            LoginView()
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
