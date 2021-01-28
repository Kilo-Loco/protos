//
//  ContentView.swift
//  contributions-widget-proto
//
//  Created by Kilo Loco on 1/27/21.
//

import Combine
import SwiftSoup
import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            ContributionsGraph(days: viewModel.contributions) { day in
                viewModel.selectedContribution = day
            }
            
            if let selectedContribution = viewModel.selectedContribution {
                Text("You made \(selectedContribution.dataCount) contribution(s) on \(DateService.shared.dateFormatter.string(from: selectedContribution.date))")
            }
        }
    }
}

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var contributions = [Contribution]()
        @Published var selectedContribution: Contribution?
        
        
        init() {
            getWebsite()
        }
        
        private var token: AnyCancellable?
        func getWebsite() {
            token = GitHubParser.getDevelopmentDays(for: "kilo-loco")
                .receive(on: DispatchQueue.main)
                .sink { completion in
                    print(completion)
                } receiveValue: { [weak self] days in
                    self?.contributions = days
                }

        }
        
        
        //        init() {
        //            getContributions()
        //        }
        
        //        private var token: AnyCancellable?
        //        func getContributions() {
        //            let url = URL(string: "https://api.github.com/graphql")!
        //            var request = URLRequest(url: url)
        //            request.httpMethod = "POST"
        //            request.setValue("bearer 9df36d6f6bce9e15f3f240a3d6132501f9f0e549", forHTTPHeaderField: "Authorization")
        //
        //            let graphqlRequest = [
        //                "query": """
        //                query {
        //                  user(login:"kilo-loco") {
        //                    issues(last: 100) {
        //                      nodes {
        //                        title,
        //                        publishedAt
        //                      }
        //                    },
        //                    pullRequests(last: 100) {
        //                      nodes {
        //                        title,
        //                        publishedAt
        //                      }
        //                    }
        //                  }
        //                }
        //                """
        //            ]
        //            let requestData = try? JSONSerialization.data(withJSONObject: graphqlRequest, options: .prettyPrinted)
        //            request.httpBody = requestData
        //
        //
        //            token = URLSession.shared.dataTaskPublisher(for: request)
        //                .tryMap { result in
        //                    try JSONSerialization.jsonObject(
        //                        with: result.data,
        //                        options: .mutableLeaves
        //                    )
        //                }
        //                .receive(on: DispatchQueue.main)
        //                .sink { completion in
        //                    print(completion)
        //                } receiveValue: { json in
        //                    print(json)
        //                }
        //        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
