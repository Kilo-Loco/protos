//
//  ContentView.swift
//  swiftui-mvvm-proto
//
//  Created by Kilo Loco on 12/22/20.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            TextField("Type something", text: $viewModel.text)
            Button("Submit", action: viewModel.showModal)
        }
        .sheet(isPresented: $viewModel.isModalPresented) {
            Text("My sheet")
        }
    }
}

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var text = ""
        @Published var isModalPresented = false
        
        func showModal() {
            isModalPresented = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
