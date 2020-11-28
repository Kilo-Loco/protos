//
//  LoginView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/23/20.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("Log in to Wuphf")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 30)
            
            FormInputField(placeholder: "Username", text: .constant(""))
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
            
            FormInputField(
                placeholder: "Password",
                text: .constant(""),
                isSecureEntryEnabled: true
            )
            .padding(.horizontal, 40)
            .padding(.vertical, 10)
            
            HStack {
                Spacer()
                
                Button(action: {}) {
                    Text("Reveal password")
                        .foregroundColor(.purple)
                }
            }
            .padding(.trailing, 40)
            
            Spacer()
            
            Divider()
            HStack {
                Button(action: {}) {
                    Text("Forgot password?")
                        .foregroundColor(.purple)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Log in")
                        .fontWeight(.semibold)
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .background(Color.purple)
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            .padding(.horizontal, 40)
            Divider()
            
        }
        .navigationBarItems(leading: Button("Cancel", action: {}))
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
