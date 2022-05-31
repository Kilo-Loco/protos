// swiftlint:disable all
import Amplify
import Foundation

public struct ChatRoom: Model {
  public let id: String
  public var memberIds: [String]
  public var lastMessage: LastMessage
  public var members: List<ChatRoomUser>?
  public var messages: List<Message>?
  
  public init(id: String = UUID().uuidString,
      memberIds: [String] = [],
      lastMessage: LastMessage,
      members: List<ChatRoomUser> = [],
      messages: List<Message> = []) {
      self.id = id
      self.memberIds = memberIds
      self.lastMessage = lastMessage
      self.members = members
      self.messages = messages
  }
}