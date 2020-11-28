//
//  VerificationCodeView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/23/20.
//

import SwiftUI

struct VerificationCodeView: View {
    
    @EnvironmentObject var authService: AuthService
    @StateObject private var state = State()
    let email: String
    
    var body: some View {
        VStack {
            Spacer()
        
            Text("We sent you a code")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 30)
            
            Text("Enter it below to verify \(email)")
                .padding(.bottom, 40)
            
            FormInputField(placeholder: "Verification code", text: $state.verificationCode)
                .padding(.horizontal, 40)
            
            Spacer()
            
            Button(action: verifyEmail) {
                Text("Next")
                    .fontWeight(.semibold)
            }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .padding(.horizontal, 40)
            
        }
    }
    
    private func verifyEmail() {
        authService.verifyEmail(with: state.verificationCode)
    }
}

fileprivate extension VerificationCodeView {
    class State: ObservableObject {
        @Published var verificationCode = String()
    }
}

struct VerificationCodeView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationCodeView(email: "kyle@kiloloco.com")
    }
}
