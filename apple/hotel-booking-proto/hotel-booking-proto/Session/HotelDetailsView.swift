//
//  HotelDetailsView.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/3/20.
//

import SwiftUI

struct HotelDetailsView: View {
    
    let hotel: Hotel
    
    var body: some View {
        VStack {
            
            Image.placeholder
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
                .clipped()
            
            VStack(alignment: .leading) {
                Text(hotel.name)
                    .font(.largeTitle)
                
                Text(hotel.description)
                
                Text(hotel.notes)
                    .font(.headline)
            }
            .padding(.horizontal, 8)
            
            Spacer()
            
            Button("Book Now", action: {})
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}
