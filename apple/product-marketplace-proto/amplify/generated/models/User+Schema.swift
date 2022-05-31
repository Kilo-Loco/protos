// swiftlint:disable all
import Amplify
import Foundation

extension User {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case username
    case avatarImageKey
    case listedProducts
    case chatrooms
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let user = User.keys
    
    model.authRules = [
      rule(allow: .public, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "Users"
    
    model.fields(
      .id(),
      .field(user.username, is: .required, ofType: .string),
      .field(user.avatarImageKey, is: .optional, ofType: .string),
      .hasMany(user.listedProducts, is: .optional, ofType: Product.self, associatedWith: Product.keys.userID),
      .hasMany(user.chatrooms, is: .optional, ofType: ChatRoomUser.self, associatedWith: ChatRoomUser.keys.user)
    )
    }
}