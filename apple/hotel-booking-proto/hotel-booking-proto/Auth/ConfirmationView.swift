//
//  ConfirmationView.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/4/20.
//

import SwiftUI

struct ConfirmationView: View {
    
    @EnvironmentObject var authService: AuthService
    
    @State private var confirmationCode = String()
    
    var body: some View {
        VStack {
            TextField("Confirmation code", text: $confirmationCode)
                .padding(8)
                .border(Color.gray)
            
            Button("Confirm", action: confirm)
                .padding()
                .foregroundColor(.white)
                .background(Color.purple)
                .cornerRadius(8)
        }
        .padding()
    }
    
    private func confirm() {
        authService.confirmEmail(with: confirmationCode)
    }
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView()
    }
}
