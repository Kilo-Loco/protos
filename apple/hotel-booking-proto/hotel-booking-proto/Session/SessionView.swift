//
//  SessionView.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/3/20.
//

import SwiftUI

struct SessionView: View {
    
    @StateObject private var dataService = DataService()
    
    var body: some View {
        TabView {
            HotelsView()
                .environmentObject(dataService)
                .tabItem {
                    Text("Hotels")
                }
            
            BookingsView()
                .tabItem {
                    Text("Bookings")
                }
            
            CreateHotelView()
                .environmentObject(dataService)
                .tabItem {
                    Text("Create")
                }
        }
    }
}

struct SessionView_Previews: PreviewProvider {
    static var previews: some View {
        SessionView()
    }
}
