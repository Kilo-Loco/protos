// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "32e26704b457ccfb044030aef93453bf"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Stock.self)
  }
}