//
//  siwa_swiftui_protoApp.swift
//  siwa-swiftui-proto
//
//  Created by Kilo Loco on 3/8/21.
//

import Amplify
import AmplifyPlugins
import AuthenticationServices
import SwiftUI

class AuthControllerDelegate: NSObject, ObservableObject, ASAuthorizationControllerDelegate, ASAuthorizationControllerPresentationContextProviding {
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        switch authorization.credential {
        case let appleIdCredentials as ASAuthorizationAppleIDCredential:
            print(appleIdCredentials.user)
            print(appleIdCredentials.fullName)
            print(appleIdCredentials.email)
            
        default:
            print(authorization.credential)
        }
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        print(error)
    }
    
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        guard let scene = UIApplication.shared.connectedScenes.first,
              let delegate = scene.delegate as? UIWindowSceneDelegate,
              let window = delegate.window as? UIWindow
        else { return UIWindow() }
        return window
    }
}

@main
struct siwa_swiftui_protoApp: App {
    
    @ObservedObject var delegate = AuthControllerDelegate()
    
    init() {
//        getCredentialsState()
//        existingAccountSetup()
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
            print("Successfully configured Amplify")
            
        } catch {
            print("Could not configure Amplify", error)
        }
    }
    
    func existingAccountSetup() {
        let request = ASAuthorizationAppleIDProvider().createRequest()
        request.requestedScopes = [.fullName, .email]
        let requests = [
            request,
            ASAuthorizationPasswordProvider().createRequest()
        ]
        
        let controller = ASAuthorizationController(authorizationRequests: requests)
        controller.delegate = delegate
        controller.presentationContextProvider = delegate
        controller.performRequests()
    }
    
    func getCredentialsState(appleUserId: String) {
        let provider = ASAuthorizationAppleIDProvider()
        provider.getCredentialState(forUserID: appleUserId) { (state, error) in
            switch state {
            case .authorized:
                print("Authorized")
            case .notFound, .revoked:
                print("Need to login again")
            case .transferred:
                print("handle transfer")
            @unknown default:
                print("Something new happened")
            }
        }
        
    }
}
