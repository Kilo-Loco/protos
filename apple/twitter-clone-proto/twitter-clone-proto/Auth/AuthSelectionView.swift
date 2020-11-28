//
//  AuthSelectionView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/18/20.
//

import SwiftUI

struct AuthSelectionView: View {
    
    @EnvironmentObject var authService: AuthService
    
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                
                Text("See what's happening in the world right now.")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button(action: authService.showSignUp) {
                    Text("Create account")
                        .fontWeight(.bold)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.purple)
                .clipShape(Capsule())
                .padding(.horizontal, 40)
                
                
                Spacer()
                
                (Text("Have an account already? ")
                    + Text("Log in")
                    .foregroundColor(.accentColor))
                    .onTapGesture(perform: authService.showLogin)
            }
            .navigationBarTitle(Text("🐺"), displayMode: .inline)
        }
    }
}

struct AuthSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        AuthSelectionView()
            .environmentObject(AuthService())
    }
}
