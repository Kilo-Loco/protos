// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "72091e0d3f1bb64db13d7dac4024c3fe"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Guest.self)
    ModelRegistry.register(modelType: Booking.self)
    ModelRegistry.register(modelType: Hotel.self)
  }
}