// swiftlint:disable all
import Amplify
import Foundation

extension Guest {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case username
    case bookings
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let guest = Guest.keys
    
    model.pluralName = "Guests"
    
    model.fields(
      .id(),
      .field(guest.username, is: .required, ofType: .string),
      .hasMany(guest.bookings, is: .optional, ofType: Booking.self, associatedWith: Booking.keys.guestID)
    )
    }
}