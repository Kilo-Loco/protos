// swiftlint:disable all
import Amplify
import Foundation

public struct ChatRoomUser: Model {
  public let id: String
  public var chatroom: ChatRoom
  public var user: User
  
  public init(id: String = UUID().uuidString,
      chatroom: ChatRoom,
      user: User) {
      self.id = id
      self.chatroom = chatroom
      self.user = user
  }
}