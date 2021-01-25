// swiftlint:disable all
import Amplify
import Foundation

public struct TVSeries: Model {
  public let id: String
  public var title: String
  public var rating: Int
  public var category: Category
  
  public init(id: String = UUID().uuidString,
      title: String,
      rating: Int,
      category: Category) {
      self.id = id
      self.title = title
      self.rating = rating
      self.category = category
  }
}