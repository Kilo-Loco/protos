//
//  AuthService.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/4/20.
//

import Amplify
import Foundation

enum AuthState {
    case login, signUp, confirmation, session(guest: Guest)
}

class AuthService: ObservableObject {
    
    @Published var state: AuthState = .login
    
    private var authCredentials: AuthCredentials?
    
    func getCurrentUser() {
        if let currentUser = Amplify.Auth.getCurrentUser() {
            print("Signed in", currentUser)
            let guest = Guest(
                id: currentUser.userId,
                username: currentUser.username
            )
            DispatchQueue.main.async { [weak self] in
                self?.state = .session(guest: guest)
            }
            
        } else {
            print("Not signed in")
            showLogin()
        }
    }
    
    func showSignUp() {
        DispatchQueue.main.async { [weak self] in
            self?.state = .signUp
        }
    }
    
    func showLogin() {
        DispatchQueue.main.async { [weak self] in
            self?.state = .login
        }
    }
    
    func signUp(with credentials: SignUpCredentials) {
        self.authCredentials = credentials
        
        let emailAttribute = AuthUserAttribute(.email, value: credentials.email)
        let usernameAttribute = AuthUserAttribute(.preferredUsername, value: credentials.username)
        let options = AuthSignUpRequest.Options(
            userAttributes: [emailAttribute, usernameAttribute]
        )
        
        Amplify.Auth.signUp(
            username: credentials.username,
            password: credentials.password,
            options: options
        ) { [weak self] (result) in
            do {
                let nextStep = try result.get().nextStep
                
                switch nextStep {
                case .confirmUser:
                    DispatchQueue.main.async {
                        self?.state = .confirmation
                    }
                    
                case .done:
                    self?.login(with: credentials)
                }
                
            } catch {
                print("Sign up error:", error)
            }
        }
    }
    
    func confirmEmail(with confirmationCode: String) {
        guard let credentials = self.authCredentials else { return }
        
        Amplify.Auth.confirmSignUp(
            for: credentials.username,
            confirmationCode: confirmationCode
        ) { [weak self] (result) in
            do {
                let nextStep = try result.get().nextStep
                
                switch nextStep {
                case .done:
                    self?.login(with: credentials)
                    
                default:
                    print("This should never happen but the next step is:", nextStep)
                }
                
            } catch {
                print("Could not confirm", error)
            }
        }
    }
    
    func login(with credentials: AuthCredentials) {
        
        Amplify.Auth.signIn(username: credentials.username, password: credentials.password) { [weak self] (result) in
            do {
                
                let isSignedIn = try result.get().isSignedIn
                
                if isSignedIn {
                    self?.authCredentials = nil
                    self?.getCurrentUser()
                    
                } else {
                    print("Is not signed in but sign in was successful?!?!?!?")
                }
                
            } catch {
                print("Could not sign in:", error)
            }
        }
        
        
    }
    
    func logOut() {
        _ = Amplify.Auth.signOut()
        showLogin()
    }
    
}
