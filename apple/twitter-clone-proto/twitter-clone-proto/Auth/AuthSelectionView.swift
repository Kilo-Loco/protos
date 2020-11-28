//
//  AuthSelectionView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/18/20.
//

import SwiftUI

struct AuthSelectionView: View {
    
    var body: some View {
            NavigationView {
                VStack {
                    
                    Spacer()
                    
                    Text("See what's happening in the world right now.")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Button(action: {}) {
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
                    
                    Button("Have an account already? Log in", action: {})
                        .foregroundColor(.purple)
                }
                .navigationBarTitle(Text("🐺"), displayMode: .inline)
            }
    }
}

struct AuthSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        AuthSelectionView()
            
    }
}
