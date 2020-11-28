//
//  CreateHotelView.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/3/20.
//

import SwiftUI

struct CreateHotelView: View {
    
    @EnvironmentObject var dataService: DataService
    
    @State var hotelName = String()
    @State var hotelDescription = String()
    @State var hotelPricePerNight = String()
    
    var body: some View {
        VStack {
            TextField("Name", text: $hotelName)
            
            TextField("Description", text: $hotelDescription)
            
            TextField("Price", text: $hotelPricePerNight)
                .keyboardType(.decimalPad)
            
            Button("Save Hotel", action: saveHotel)
        }
        .padding()
    }
    
    private func saveHotel() {
        guard let priceNumber = Int(hotelPricePerNight) else { return }
        let photoPath = Bundle.main.path(forResource: "stock-photo", ofType: "png")!
        let photo = UIImage(contentsOfFile: photoPath)!
        
        dataService.createHotel(
            name: hotelName,
            description: hotelDescription,
            price: priceNumber,
            image: photo
        )
        
        hotelName.removeAll()
        hotelDescription.removeAll()
        hotelPricePerNight.removeAll()
        
        hideKeyboard()
    }
}

struct CreateHotelView_Previews: PreviewProvider {
    static var previews: some View {
        CreateHotelView()
    }
}
