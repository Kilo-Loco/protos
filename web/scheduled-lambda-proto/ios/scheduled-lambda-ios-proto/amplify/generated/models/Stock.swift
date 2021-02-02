// swiftlint:disable all
import Amplify
import Foundation

public struct Stock: Model {
  public let id: String
  public var tickerSymbol: String
  public var price: Double
  
  public init(id: String = UUID().uuidString,
      tickerSymbol: String,
      price: Double) {
      self.id = id
      self.tickerSymbol = tickerSymbol
      self.price = price
  }
}