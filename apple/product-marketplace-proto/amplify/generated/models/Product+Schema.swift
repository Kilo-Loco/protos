// swiftlint:disable all
import Amplify
import Foundation

extension Product {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case value
    case isAvailable
    case coverImageKey
    case additionalImageKeys
    case userID
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let product = Product.keys
    
    model.authRules = [
      rule(allow: .public, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "Products"
    
    model.fields(
      .id(),
      .field(product.name, is: .required, ofType: .string),
      .field(product.value, is: .required, ofType: .int),
      .field(product.isAvailable, is: .required, ofType: .bool),
      .field(product.coverImageKey, is: .required, ofType: .string),
      .field(product.additionalImageKeys, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(product.userID, is: .required, ofType: .string)
    )
    }
}