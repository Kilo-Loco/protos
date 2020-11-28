//
//  AuthService.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/27/20.
//

import Foundation

class AuthService: ObservableObject {
    @Published private(set) var flowState: FlowState = .login
    
    private var credentials: AuthCredentials?
    
    var currentUser: Any? {
        switch flowState {
        case .session(let user):
            return user
        default:
            return nil
        }
    }
    
    private func setFlowState(to newState: FlowState) {
        DispatchQueue.main.async { [weak self] in
            self?.flowState = newState
        }
    }
    
    func checkSessionStatus() {
        setFlowState(to: false ? .session(user: false) : .login)
    }
    
    func showSignUp() {
        setFlowState(to: .signUp)
    }
    
    func showLogin() {
        setFlowState(to: .login)
    }
    
    func signUp(with credentials: SignUpCredentials) {
        self.credentials = credentials
        self.setFlowState(to: .verify(email: credentials.email))
    }
    
    func verifyEmail(with verificationCode: String) {
        guard let credentials = self.credentials else { return }
        self.login(with: credentials)
    }
    
    func login(with credentials: AuthCredentials) {
        self.setFlowState(to: .session(user: true))
    }
    
    func logOut() {
        setFlowState(to: .login)
    }
}

extension AuthService {
    enum FlowState {
        case signUp
        case verify(email: String)
        case login
        case session(user: Any)
    }
}