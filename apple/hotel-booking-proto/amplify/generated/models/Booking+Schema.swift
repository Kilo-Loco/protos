// swiftlint:disable all
import Amplify
import Foundation

extension Booking {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case guestID
    case guest
    case hotelID
    case hotel
    case startDate
    case endDate
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let booking = Booking.keys
    
    model.pluralName = "Bookings"
    
    model.fields(
      .id(),
      .field(booking.guestID, is: .required, ofType: .string),
      .belongsTo(booking.guest, is: .optional, ofType: Guest.self, targetName: "bookingGuestId"),
      .field(booking.hotelID, is: .required, ofType: .string),
      .belongsTo(booking.hotel, is: .optional, ofType: Hotel.self, targetName: "bookingHotelId"),
      .field(booking.startDate, is: .required, ofType: .date),
      .field(booking.endDate, is: .required, ofType: .date)
    )
    }
}