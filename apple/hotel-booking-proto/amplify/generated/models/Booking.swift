// swiftlint:disable all
import Amplify
import Foundation

public struct Booking: Model {
  public let id: String
  public var guestID: String
  public var guest: Guest?
  public var hotelID: String
  public var hotel: Hotel?
  public var startDate: Temporal.Date
  public var endDate: Temporal.Date
  
  public init(id: String = UUID().uuidString,
      guestID: String,
      guest: Guest? = nil,
      hotelID: String,
      hotel: Hotel? = nil,
      startDate: Temporal.Date,
      endDate: Temporal.Date) {
      self.id = id
      self.guestID = guestID
      self.guest = guest
      self.hotelID = hotelID
      self.hotel = hotel
      self.startDate = startDate
      self.endDate = endDate
  }
}