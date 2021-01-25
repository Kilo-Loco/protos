// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "292105a18e76790087bfdcbab735a007"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: TVSeries.self)
  }
}