// swiftlint:disable all
import Amplify
import Foundation

public struct Product: Model {
  public let id: String
  public var name: String
  public var value: Int
  public var isAvailable: Bool
  public var coverImageKey: String
  public var additionalImageKeys: [String]?
  public var userID: String
  
  public init(id: String = UUID().uuidString,
      name: String,
      value: Int,
      isAvailable: Bool,
      coverImageKey: String,
      additionalImageKeys: [String]? = [],
      userID: String) {
      self.id = id
      self.name = name
      self.value = value
      self.isAvailable = isAvailable
      self.coverImageKey = coverImageKey
      self.additionalImageKeys = additionalImageKeys
      self.userID = userID
  }
}