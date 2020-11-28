// swiftlint:disable all
import Amplify
import Foundation

extension Hotel {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case description
    case price
    case imageKey
    case bookings
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let hotel = Hotel.keys
    
    model.pluralName = "Hotels"
    
    model.fields(
      .id(),
      .field(hotel.name, is: .required, ofType: .string),
      .field(hotel.description, is: .required, ofType: .string),
      .field(hotel.price, is: .required, ofType: .int),
      .field(hotel.imageKey, is: .required, ofType: .string),
      .hasMany(hotel.bookings, is: .optional, ofType: Booking.self, associatedWith: Booking.keys.hotelID)
    )
    }
}