// swiftlint:disable all
import Amplify
import Foundation

extension TVSeries {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case title
    case rating
    case category
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let tVSeries = TVSeries.keys
    
    model.pluralName = "TVSeries"
    
    model.fields(
      .id(),
      .field(tVSeries.title, is: .required, ofType: .string),
      .field(tVSeries.rating, is: .required, ofType: .int),
      .field(tVSeries.category, is: .required, ofType: .enum(type: Category.self))
    )
    }
}