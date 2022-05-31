// swiftlint:disable all
import Amplify
import Foundation

public struct Message: Model {
  public let id: String
  public var body: String
  public var timestamp: Int
  public var sender: User?
  public var chatroomID: String
  
  public init(id: String = UUID().uuidString,
      body: String,
      timestamp: Int,
      sender: User? = nil,
      chatroomID: String) {
      self.id = id
      self.body = body
      self.timestamp = timestamp
      self.sender = sender
      self.chatroomID = chatroomID
  }
}