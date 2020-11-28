// swiftlint:disable all
import Amplify
import Foundation

public struct Guest: Model {
  public let id: String
  public var username: String
  public var bookings: List<Booking>?
  
  public init(id: String = UUID().uuidString,
      username: String,
      bookings: List<Booking>? = []) {
      self.id = id
      self.username = username
      self.bookings = bookings
  }
}