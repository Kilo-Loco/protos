//
//  ContentView.swift
//  scheduled-lambda-ios-proto
//
//  Created by Kilo Loco on 2/1/21.
//

import Amplify
import Combine
import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            if let stock = viewModel.stock {
            Text("\(stock.tickerSymbol) - \(stock.price)")
        } else {
            Text("No new Stock update")
        }
            Button("make") {
//                Amplify.DataStore.save(Stock(tickerSymbol: "APPL", price: 300)) { _ in }
                
            }
        }
    }
    
    
}

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var stock: Stock?
        private var token: AnyCancellable?
        
        init() {
            observeStock()
        }
        
        private func observeStock() {
            token = Amplify.API.subscribe(request: .subscription(of: Stock.self, type: .onCreate))
                .subscriptionDataPublisher
                .receive(on: DispatchQueue.main)
                .sink { completion in
                    switch completion {
                    case .failure(let error):
                        print(error)
                        
                    case .finished:
                        print("done")
                    }
                } receiveValue: { [weak self] result in
                    do {
                        let stock = try result.get()
                        self?.stock = stock
                        
                    } catch {
                        print(error)
                    }
                }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
