// swiftlint:disable all
import Amplify
import Foundation

extension Stock {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case tickerSymbol
    case price
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let stock = Stock.keys
    
    model.pluralName = "Stocks"
    
    model.fields(
      .id(),
      .field(stock.tickerSymbol, is: .required, ofType: .string),
      .field(stock.price, is: .required, ofType: .double)
    )
    }
}