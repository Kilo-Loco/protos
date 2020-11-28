//
//  HotelsView.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/3/20.
//

import SwiftUI

struct HotelsView: View {
    
    @EnvironmentObject var authService: AuthService
    @EnvironmentObject var dataService: DataService
    
    @State private var selectedHotel: Hotel?
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                LazyVStack {
                    ForEach(dataService.hotels) { hotel in
                        SubjectRowView(hotel)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .shadow(radius: 4)
                            .padding(.horizontal, 16)
                            .onTapGesture {
                                selectedHotel = hotel
                            }
                    }
                }
            }
            .navigationTitle("Hotels")
            .navigationBarItems(
                trailing: Button(
                    action: authService.logOut,
                    label: {
                        Image(systemName: "arrowshape.turn.up.backward.fill")
                    }
                )
            )
        }
        .onAppear(perform: dataService.getHotels)
        .sheet(item: $selectedHotel) {
            HotelDetailsView(hotel: $0)
        }
    }
}

struct HotelsView_Previews: PreviewProvider {
    static var previews: some View {
        HotelsView()
    }
}
