// swiftlint:disable all
import Amplify
import Foundation

public struct LastMessage: Embeddable {
  var body: String
  var readByMemberIds: [String]
  var timestamp: Int
}