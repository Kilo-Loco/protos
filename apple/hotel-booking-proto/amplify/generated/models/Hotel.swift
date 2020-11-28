// swiftlint:disable all
import Amplify
import Foundation

public struct Hotel: Model {
  public let id: String
  public var name: String
  public var description: String
  public var price: Int
  public var imageKey: String
  public var bookings: List<Booking>?
  
  public init(id: String = UUID().uuidString,
      name: String,
      description: String,
      price: Int,
      imageKey: String,
      bookings: List<Booking>? = []) {
      self.id = id
      self.name = name
      self.description = description
      self.price = price
      self.imageKey = imageKey
      self.bookings = bookings
  }
}