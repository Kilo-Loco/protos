//
//  ContentView.swift
//  user-defaults-proto
//
//  Created by Kilo Loco on 4/4/22.
//

import SwiftUI

struct ContentView: View {
    
//    @AppStorage("username") private var username = ""
//    @AppStorage("email") private var email = ""
//
//    @AppStorage("fullName") private var fullName = ""
//    @AppStorage("age") private var age = 0
//    @AppStorage("isDev") private var isDev = false
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                Section {
                    LabelTextField(label: "Username", text: $viewModel.username)
                    LabelTextField(label: "Email", text: $viewModel.email)
                }
                
                Section {
                    LabelTextField(label: "Full Name", text: $viewModel.fullName)
                    Stepper("Age: \(viewModel.age)", value: $viewModel.age)
                    Toggle(isOn: $viewModel.isDev) {
                        Text("Developer")
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

class ViewModel: ObservableObject {
    @AppStorage("username") var username = ""
    @AppStorage("email") var email = ""
    
    @AppStorage("fullName") var fullName = ""
    @AppStorage("age") var age = 0
    @AppStorage("isDev") var isDev = false
    
    
}

struct LabelTextField: View {
    let label: String
    let text: Binding<String>
    
    var body: some View {
        HStack {
            Text(label)
            TextField("", text: text)
                .multilineTextAlignment(.trailing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
