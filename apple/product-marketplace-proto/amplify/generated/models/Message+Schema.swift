// swiftlint:disable all
import Amplify
import Foundation

extension Message {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case body
    case timestamp
    case sender
    case chatroomID
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let message = Message.keys
    
    model.authRules = [
      rule(allow: .public, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "Messages"
    
    model.fields(
      .id(),
      .field(message.body, is: .required, ofType: .string),
      .field(message.timestamp, is: .required, ofType: .int),
      .belongsTo(message.sender, is: .optional, ofType: User.self, targetName: "messageSenderId"),
      .field(message.chatroomID, is: .required, ofType: .string)
    )
    }
}