//
//  Image+Extensions.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/6/20.
//

import SwiftUI

extension Image {
    static var placeholder: Image {
        let photoPath = Bundle.main.path(forResource: "stock-photo", ofType: "png")!
        return Image(uiImage: UIImage(contentsOfFile: photoPath)!)
    }
}
