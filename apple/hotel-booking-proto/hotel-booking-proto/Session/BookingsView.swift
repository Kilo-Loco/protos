//
//  BookingsView.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/3/20.
//

import SwiftUI

struct BookingsView: View {
    var body: some View {
        Color.red
            .clipShape(
                RoundableShape(.diagonalDown(120), .diagonalUp(20))
            )
    }
}

struct BookingsView_Previews: PreviewProvider {
    static var previews: some View {
        BookingsView()
    }
}
