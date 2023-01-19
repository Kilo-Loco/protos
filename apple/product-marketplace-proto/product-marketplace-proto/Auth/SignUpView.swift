//
//  SignUpView.swift
//  product-marketplace-proto
//
//  Created by Kilo Loco on 5/31/22.
//

import SwiftUI

struct AppIcon: View {
    var body: some View {
        Image("product-marketplace-logo")
            .resizable()
            .scaledToFit()
            .frame(width: 250, height: 250)
    }
}

struct FormField: View {
    let placeholder: String
    let text: Binding<String>
    let isSecure: Bool
    
    init(
        _ placeholder: String,
        text: Binding<String>,
        isSecure: Bool = false
    ) {
        self.placeholder = placeholder
        self.text = text
        self.isSecure = isSecure
    }
    
    var body: some View {
        Group {
            if isSecure {
                SecureField(placeholder, text: text)
            } else {
                TextField(placeholder, text: text)
            }
        }
        .padding()
        .background(Color(uiColor: .secondarySystemBackground))
        .clipShape(Capsule())
    }
}

struct FormButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(title, action: action)
            .foregroundColor(.white)
            .padding()
            .background(Color.accentColor)
            .clipShape(Capsule())
    }
}


struct SignUpView: View {
    
    @StateObject private var viewModel: ViewModel = .init()
    
    var body: some View {
        VStack {
            AppIcon()
            Spacer()
                .frame(maxHeight: 100)
            FormField("Username", text: $viewModel.username)
            FormField("Email", text: $viewModel.email)
            FormField("Password", text: $viewModel.password, isSecure: true)
            FormButton(title: "Sign Up", action: viewModel.signUp)
        }
        .padding()
    }
}

extension SignUpView {
    class ViewModel: ObservableObject {
        
        @Published var username: String = ""
        @Published var email: String = ""
        @Published var password: String = ""
        
        func signUp() {
            print(username, email, password)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

struct LoginView: View {
    
    @StateObject private var viewModel: ViewModel = .init()
    
    var body: some View {
        VStack {
            AppIcon()
            Spacer()
                .frame(maxHeight: 100)
            FormField("Username", text: $viewModel.username)
            FormField("Password", text: $viewModel.password, isSecure: true)
            FormButton(title: "Login", action: viewModel.login)
        }
        .padding()
    }
}

extension LoginView {
    class ViewModel: ObservableObject {
        
        @Published var username: String = ""
        @Published var password: String = ""
        
        func login() {
            print(username, password)
        }
    }
}

struct ConfirmSignUpView: View {
    
    @StateObject private var viewModel: ViewModel = .init()
    
    var body: some View {
        VStack {
            AppIcon()
            Spacer()
                .frame(maxHeight: 100)
            FormField("Confirm Sign Up", text: $viewModel.confirmationCode)
            FormButton(title: "Confirm Sign Up", action: viewModel.confirmSignUp)
        }
        .padding()
    }
}

extension ConfirmSignUpView {
    class ViewModel: ObservableObject {
        
        @Published var confirmationCode: String = ""
        
        func confirmSignUp() {
            print(confirmationCode)
        }
    }
}
