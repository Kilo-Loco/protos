//
//  ContentView.swift
//  sync-expressions-proto
//
//  Created by Kilo Loco on 1/10/21.
//

import Amplify
import SwiftUI

extension TVSeries: Identifiable {}

extension Category: Identifiable {
    public var id: String {
        rawValue
    }
}

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            TVShowsList(viewModel.tvShows)
            
            PreferredRatingSlider($viewModel.preferredRating)
            
            PreferredCategory($viewModel.preferredCategory)
        }
        .padding()
        .onAppear(perform: viewModel.getTvShows)
    }
    
    func TVShowsList(_ tvShows: [TVSeries]) -> some View {
        ScrollView {
            LazyVStack {
                ForEach(tvShows) { tvShow in
                    HStack {
                        
                        VStack(alignment: .leading) {
                            Text(tvShow.title)
                            Text(
                                Array(repeating: "⭐️", count: tvShow.rating).joined()
                            )
                        }
                        
                        Spacer()
                        
                        Text(tvShow.category.rawValue)
                            .font(.footnote)
                    }
                    .padding(.vertical)
                }
            }
        }
    }
    
    func PreferredRatingSlider(_ rating: Binding<Double>) -> some View {
        VStack(alignment: .leading) {
            Text("Preferred Rating: \(Int(rating.wrappedValue))").bold()
            Slider(
                value: rating,
                in: 0 ... 5,
                step: 1,
                minimumValueLabel: Text("0"),
                maximumValueLabel: Text("5"),
                label: { EmptyView() }
            )
        }
    }
    
    func PreferredCategory(_ category: Binding<Category>) -> some View {
        VStack(alignment: .leading) {
            Text("Preferred Category").bold()
            Picker("", selection: category) {
                ForEach([Category.action, .drama, .thriller]) { item in
                    Text(item.rawValue.capitalized).tag(item)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var tvShows = [TVSeries]()
        @Published var preferredRating: Double {
            didSet {
                UserDefaults.standard.setValue(Int(preferredRating), forKey: "preferredRating")
            }
        }
        @Published var preferredCategory: Category {
            didSet {
                print(preferredCategory.rawValue)
                UserDefaults.standard.setValue(preferredCategory.rawValue, forKey: "preferredCategory")
            }
        }
        
        init() {
            self.preferredRating = Double(UserDefaults.standard.integer(forKey: "preferredRating"))
            self.preferredCategory = UserDefaults.standard.string(forKey: "preferredCategory")
                .flatMap { Category(rawValue: $0) }
                ?? .action
        }
        
        func getTvShows() {
            Amplify.DataStore.query(TVSeries.self) { result in
                switch(result) {
                case .success(let items):
                    DispatchQueue.main.async { [weak self] in
                        self?.tvShows = items
                    }
                    
                case .failure(let error):
                    print("Could not query DataStore: \(error)")
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
