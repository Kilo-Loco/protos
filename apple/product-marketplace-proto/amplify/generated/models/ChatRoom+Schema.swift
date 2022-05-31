// swiftlint:disable all
import Amplify
import Foundation

extension ChatRoom {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case memberIds
    case lastMessage
    case members
    case messages
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let chatRoom = ChatRoom.keys
    
    model.authRules = [
      rule(allow: .public, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "ChatRooms"
    
    model.fields(
      .id(),
      .field(chatRoom.memberIds, is: .required, ofType: .embeddedCollection(of: String.self)),
      .field(chatRoom.lastMessage, is: .required, ofType: .embedded(type: LastMessage.self)),
      .hasMany(chatRoom.members, is: .optional, ofType: ChatRoomUser.self, associatedWith: ChatRoomUser.keys.chatroom),
      .hasMany(chatRoom.messages, is: .optional, ofType: Message.self, associatedWith: Message.keys.chatroomID)
    )
    }
}