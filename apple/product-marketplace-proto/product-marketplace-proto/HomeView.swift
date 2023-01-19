//
//  HomeView.swift
//  product-marketplace-proto
//
//  Created by Kilo Loco on 5/31/22.
//

import SwiftUI

extension Product: Identifiable {}

struct ProductListView: View {
    
    let products: [Product]
    
    let columns = Array(
        repeating: GridItem(.flexible(), spacing: 4),
        count: 3
    )
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 4) {
                ForEach(products) { product in
                    Text(product.name)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.red)
                        .cornerRadius(4)
                }
            }
            .padding(.horizontal, 4)
        }
    }
}

struct ScreenActionButton<Content: View>: View {
    let systemImageName: String
    let action: () -> Void
    let content: () -> Content
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            content()
            
            Button(action: action) {
                Image(systemName: systemImageName)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.accentColor)
                    .clipShape(Circle())
            }
            .padding()
        }
    }
}

struct HomeView: View {
    
    let products = (1 ... 30).map { i in
        Product(
            name: "Product \(i)",
            value: 20,
            isAvailable: true,
            coverImageKey: "",
            userID: ""
        )
    }
    
    var body: some View {
        NavigationView {
            ScreenActionButton(systemImageName: "plus", action: {}) {
                ProductListView(products: products)
            }
            .navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
