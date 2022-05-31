// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "fe61339a77bf2020c681946b2b18bc4d"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Message.self)
    ModelRegistry.register(modelType: User.self)
    ModelRegistry.register(modelType: Product.self)
    ModelRegistry.register(modelType: ChatRoomUser.self)
    ModelRegistry.register(modelType: ChatRoom.self)
  }
}