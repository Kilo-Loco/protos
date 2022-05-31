// swiftlint:disable all
import Amplify
import Foundation

public struct User: Model {
  public let id: String
  public var username: String
  public var avatarImageKey: String?
  public var listedProducts: List<Product>?
  public var chatrooms: List<ChatRoomUser>?
  
  public init(id: String = UUID().uuidString,
      username: String,
      avatarImageKey: String? = nil,
      listedProducts: List<Product>? = [],
      chatrooms: List<ChatRoomUser>? = []) {
      self.id = id
      self.username = username
      self.avatarImageKey = avatarImageKey
      self.listedProducts = listedProducts
      self.chatrooms = chatrooms
  }
}