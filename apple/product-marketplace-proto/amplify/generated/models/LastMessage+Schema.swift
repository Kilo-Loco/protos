// swiftlint:disable all
import Amplify
import Foundation

extension LastMessage {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case body
    case readByMemberIds
    case timestamp
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let lastMessage = LastMessage.keys
    
    model.pluralName = "LastMessages"
    
    model.fields(
      .field(lastMessage.body, is: .required, ofType: .string),
      .field(lastMessage.readByMemberIds, is: .required, ofType: .embeddedCollection(of: String.self)),
      .field(lastMessage.timestamp, is: .required, ofType: .int)
    )
    }
}