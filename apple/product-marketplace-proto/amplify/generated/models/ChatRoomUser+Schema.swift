// swiftlint:disable all
import Amplify
import Foundation

extension ChatRoomUser {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case chatroom
    case user
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let chatRoomUser = ChatRoomUser.keys
    
    model.authRules = [
      rule(allow: .public, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "ChatRoomUsers"
    
    model.fields(
      .id(),
      .belongsTo(chatRoomUser.chatroom, is: .required, ofType: ChatRoom.self, targetName: "chatroomID"),
      .belongsTo(chatRoomUser.user, is: .required, ofType: User.self, targetName: "userID")
    )
    }
}