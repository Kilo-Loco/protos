//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateGuestInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, username: String, version: Int? = nil) {
    graphQLMap = ["id": id, "username": username, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String {
    get {
      return graphQLMap["username"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelGuestConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(username: ModelStringInput? = nil, and: [ModelGuestConditionInput?]? = nil, or: [ModelGuestConditionInput?]? = nil, not: ModelGuestConditionInput? = nil) {
    graphQLMap = ["username": username, "and": and, "or": or, "not": not]
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var and: [ModelGuestConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelGuestConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelGuestConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelGuestConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelGuestConditionInput? {
    get {
      return graphQLMap["not"] as! ModelGuestConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct UpdateGuestInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, username: String? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "username": username, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String? {
    get {
      return graphQLMap["username"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct DeleteGuestInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct CreateHotelInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String, description: String, price: Int, imageKey: String, version: Int? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String {
    get {
      return graphQLMap["description"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var price: Int {
    get {
      return graphQLMap["price"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var imageKey: String {
    get {
      return graphQLMap["imageKey"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageKey")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelHotelConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringInput? = nil, description: ModelStringInput? = nil, price: ModelIntInput? = nil, imageKey: ModelStringInput? = nil, and: [ModelHotelConditionInput?]? = nil, or: [ModelHotelConditionInput?]? = nil, not: ModelHotelConditionInput? = nil) {
    graphQLMap = ["name": name, "description": description, "price": price, "imageKey": imageKey, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var price: ModelIntInput? {
    get {
      return graphQLMap["price"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var imageKey: ModelStringInput? {
    get {
      return graphQLMap["imageKey"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageKey")
    }
  }

  public var and: [ModelHotelConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelHotelConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelHotelConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelHotelConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelHotelConditionInput? {
    get {
      return graphQLMap["not"] as! ModelHotelConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateHotelInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil, description: String? = nil, price: Int? = nil, imageKey: String? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "_version": version]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var price: Int? {
    get {
      return graphQLMap["price"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var imageKey: String? {
    get {
      return graphQLMap["imageKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageKey")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct DeleteHotelInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct CreateBookingInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int? = nil, bookingGuestId: GraphQLID? = nil, bookingHotelId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "bookingGuestId": bookingGuestId, "bookingHotelId": bookingHotelId]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var guestId: GraphQLID {
    get {
      return graphQLMap["guestID"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "guestID")
    }
  }

  public var hotelId: GraphQLID {
    get {
      return graphQLMap["hotelID"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hotelID")
    }
  }

  public var startDate: String {
    get {
      return graphQLMap["startDate"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }

  public var endDate: String {
    get {
      return graphQLMap["endDate"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "endDate")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }

  public var bookingGuestId: GraphQLID? {
    get {
      return graphQLMap["bookingGuestId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bookingGuestId")
    }
  }

  public var bookingHotelId: GraphQLID? {
    get {
      return graphQLMap["bookingHotelId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bookingHotelId")
    }
  }
}

public struct ModelBookingConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(guestId: ModelIDInput? = nil, hotelId: ModelIDInput? = nil, startDate: ModelStringInput? = nil, endDate: ModelStringInput? = nil, and: [ModelBookingConditionInput?]? = nil, or: [ModelBookingConditionInput?]? = nil, not: ModelBookingConditionInput? = nil) {
    graphQLMap = ["guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "and": and, "or": or, "not": not]
  }

  public var guestId: ModelIDInput? {
    get {
      return graphQLMap["guestID"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "guestID")
    }
  }

  public var hotelId: ModelIDInput? {
    get {
      return graphQLMap["hotelID"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hotelID")
    }
  }

  public var startDate: ModelStringInput? {
    get {
      return graphQLMap["startDate"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }

  public var endDate: ModelStringInput? {
    get {
      return graphQLMap["endDate"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "endDate")
    }
  }

  public var and: [ModelBookingConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelBookingConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelBookingConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelBookingConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelBookingConditionInput? {
    get {
      return graphQLMap["not"] as! ModelBookingConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct UpdateBookingInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, guestId: GraphQLID? = nil, hotelId: GraphQLID? = nil, startDate: String? = nil, endDate: String? = nil, version: Int? = nil, bookingGuestId: GraphQLID? = nil, bookingHotelId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "bookingGuestId": bookingGuestId, "bookingHotelId": bookingHotelId]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var guestId: GraphQLID? {
    get {
      return graphQLMap["guestID"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "guestID")
    }
  }

  public var hotelId: GraphQLID? {
    get {
      return graphQLMap["hotelID"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hotelID")
    }
  }

  public var startDate: String? {
    get {
      return graphQLMap["startDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }

  public var endDate: String? {
    get {
      return graphQLMap["endDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "endDate")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }

  public var bookingGuestId: GraphQLID? {
    get {
      return graphQLMap["bookingGuestId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bookingGuestId")
    }
  }

  public var bookingHotelId: GraphQLID? {
    get {
      return graphQLMap["bookingHotelId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bookingHotelId")
    }
  }
}

public struct DeleteBookingInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, version: Int? = nil) {
    graphQLMap = ["id": id, "_version": version]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var version: Int? {
    get {
      return graphQLMap["_version"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_version")
    }
  }
}

public struct ModelGuestFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, username: ModelStringInput? = nil, and: [ModelGuestFilterInput?]? = nil, or: [ModelGuestFilterInput?]? = nil, not: ModelGuestFilterInput? = nil) {
    graphQLMap = ["id": id, "username": username, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var and: [ModelGuestFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelGuestFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelGuestFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelGuestFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelGuestFilterInput? {
    get {
      return graphQLMap["not"] as! ModelGuestFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelHotelFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, name: ModelStringInput? = nil, description: ModelStringInput? = nil, price: ModelIntInput? = nil, imageKey: ModelStringInput? = nil, and: [ModelHotelFilterInput?]? = nil, or: [ModelHotelFilterInput?]? = nil, not: ModelHotelFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: ModelStringInput? {
    get {
      return graphQLMap["description"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var price: ModelIntInput? {
    get {
      return graphQLMap["price"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var imageKey: ModelStringInput? {
    get {
      return graphQLMap["imageKey"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageKey")
    }
  }

  public var and: [ModelHotelFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelHotelFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelHotelFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelHotelFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelHotelFilterInput? {
    get {
      return graphQLMap["not"] as! ModelHotelFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelBookingFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, guestId: ModelIDInput? = nil, hotelId: ModelIDInput? = nil, startDate: ModelStringInput? = nil, endDate: ModelStringInput? = nil, and: [ModelBookingFilterInput?]? = nil, or: [ModelBookingFilterInput?]? = nil, not: ModelBookingFilterInput? = nil) {
    graphQLMap = ["id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var guestId: ModelIDInput? {
    get {
      return graphQLMap["guestID"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "guestID")
    }
  }

  public var hotelId: ModelIDInput? {
    get {
      return graphQLMap["hotelID"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hotelID")
    }
  }

  public var startDate: ModelStringInput? {
    get {
      return graphQLMap["startDate"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startDate")
    }
  }

  public var endDate: ModelStringInput? {
    get {
      return graphQLMap["endDate"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "endDate")
    }
  }

  public var and: [ModelBookingFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelBookingFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelBookingFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelBookingFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelBookingFilterInput? {
    get {
      return graphQLMap["not"] as! ModelBookingFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateGuestMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateGuest($input: CreateGuestInput!, $condition: ModelGuestConditionInput) {\n  createGuest(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateGuestInput
  public var condition: ModelGuestConditionInput?

  public init(input: CreateGuestInput, condition: ModelGuestConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createGuest", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateGuest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createGuest: CreateGuest? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createGuest": createGuest.flatMap { $0.snapshot }])
    }

    public var createGuest: CreateGuest? {
      get {
        return (snapshot["createGuest"] as? Snapshot).flatMap { CreateGuest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createGuest")
      }
    }

    public struct CreateGuest: GraphQLSelectionSet {
      public static let possibleTypes = ["Guest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class UpdateGuestMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateGuest($input: UpdateGuestInput!, $condition: ModelGuestConditionInput) {\n  updateGuest(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateGuestInput
  public var condition: ModelGuestConditionInput?

  public init(input: UpdateGuestInput, condition: ModelGuestConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateGuest", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateGuest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateGuest: UpdateGuest? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateGuest": updateGuest.flatMap { $0.snapshot }])
    }

    public var updateGuest: UpdateGuest? {
      get {
        return (snapshot["updateGuest"] as? Snapshot).flatMap { UpdateGuest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateGuest")
      }
    }

    public struct UpdateGuest: GraphQLSelectionSet {
      public static let possibleTypes = ["Guest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class DeleteGuestMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteGuest($input: DeleteGuestInput!, $condition: ModelGuestConditionInput) {\n  deleteGuest(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteGuestInput
  public var condition: ModelGuestConditionInput?

  public init(input: DeleteGuestInput, condition: ModelGuestConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteGuest", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteGuest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteGuest: DeleteGuest? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteGuest": deleteGuest.flatMap { $0.snapshot }])
    }

    public var deleteGuest: DeleteGuest? {
      get {
        return (snapshot["deleteGuest"] as? Snapshot).flatMap { DeleteGuest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteGuest")
      }
    }

    public struct DeleteGuest: GraphQLSelectionSet {
      public static let possibleTypes = ["Guest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class CreateHotelMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateHotel($input: CreateHotelInput!, $condition: ModelHotelConditionInput) {\n  createHotel(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    description\n    price\n    imageKey\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateHotelInput
  public var condition: ModelHotelConditionInput?

  public init(input: CreateHotelInput, condition: ModelHotelConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createHotel", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateHotel.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createHotel: CreateHotel? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createHotel": createHotel.flatMap { $0.snapshot }])
    }

    public var createHotel: CreateHotel? {
      get {
        return (snapshot["createHotel"] as? Snapshot).flatMap { CreateHotel(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createHotel")
      }
    }

    public struct CreateHotel: GraphQLSelectionSet {
      public static let possibleTypes = ["Hotel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var price: Int {
        get {
          return snapshot["price"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class UpdateHotelMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateHotel($input: UpdateHotelInput!, $condition: ModelHotelConditionInput) {\n  updateHotel(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    description\n    price\n    imageKey\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateHotelInput
  public var condition: ModelHotelConditionInput?

  public init(input: UpdateHotelInput, condition: ModelHotelConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateHotel", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateHotel.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateHotel: UpdateHotel? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateHotel": updateHotel.flatMap { $0.snapshot }])
    }

    public var updateHotel: UpdateHotel? {
      get {
        return (snapshot["updateHotel"] as? Snapshot).flatMap { UpdateHotel(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateHotel")
      }
    }

    public struct UpdateHotel: GraphQLSelectionSet {
      public static let possibleTypes = ["Hotel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var price: Int {
        get {
          return snapshot["price"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class DeleteHotelMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteHotel($input: DeleteHotelInput!, $condition: ModelHotelConditionInput) {\n  deleteHotel(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    description\n    price\n    imageKey\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteHotelInput
  public var condition: ModelHotelConditionInput?

  public init(input: DeleteHotelInput, condition: ModelHotelConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteHotel", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteHotel.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteHotel: DeleteHotel? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteHotel": deleteHotel.flatMap { $0.snapshot }])
    }

    public var deleteHotel: DeleteHotel? {
      get {
        return (snapshot["deleteHotel"] as? Snapshot).flatMap { DeleteHotel(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteHotel")
      }
    }

    public struct DeleteHotel: GraphQLSelectionSet {
      public static let possibleTypes = ["Hotel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var price: Int {
        get {
          return snapshot["price"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class CreateBookingMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateBooking($input: CreateBookingInput!, $condition: ModelBookingConditionInput) {\n  createBooking(input: $input, condition: $condition) {\n    __typename\n    id\n    guestID\n    guest {\n      __typename\n      id\n      username\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    hotelID\n    hotel {\n      __typename\n      id\n      name\n      description\n      price\n      imageKey\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    startDate\n    endDate\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateBookingInput
  public var condition: ModelBookingConditionInput?

  public init(input: CreateBookingInput, condition: ModelBookingConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createBooking", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createBooking: CreateBooking? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createBooking": createBooking.flatMap { $0.snapshot }])
    }

    public var createBooking: CreateBooking? {
      get {
        return (snapshot["createBooking"] as? Snapshot).flatMap { CreateBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createBooking")
      }
    }

    public struct CreateBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guest", type: .object(Guest.selections)),
        GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("hotel", type: .object(Hotel.selections)),
        GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, guestId: GraphQLID, guest: Guest? = nil, hotelId: GraphQLID, hotel: Hotel? = nil, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "guest": guest.flatMap { $0.snapshot }, "hotelID": hotelId, "hotel": hotel.flatMap { $0.snapshot }, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var guestId: GraphQLID {
        get {
          return snapshot["guestID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "guestID")
        }
      }

      public var guest: Guest? {
        get {
          return (snapshot["guest"] as? Snapshot).flatMap { Guest(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "guest")
        }
      }

      public var hotelId: GraphQLID {
        get {
          return snapshot["hotelID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "hotelID")
        }
      }

      public var hotel: Hotel? {
        get {
          return (snapshot["hotel"] as? Snapshot).flatMap { Hotel(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "hotel")
        }
      }

      public var startDate: String {
        get {
          return snapshot["startDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var endDate: String {
        get {
          return snapshot["endDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "endDate")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Guest: GraphQLSelectionSet {
        public static let possibleTypes = ["Guest"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }

      public struct Hotel: GraphQLSelectionSet {
        public static let possibleTypes = ["Hotel"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .nonNull(.scalar(Int.self))),
          GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var price: Int {
          get {
            return snapshot["price"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var imageKey: String {
          get {
            return snapshot["imageKey"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageKey")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }
    }
  }
}

public final class UpdateBookingMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateBooking($input: UpdateBookingInput!, $condition: ModelBookingConditionInput) {\n  updateBooking(input: $input, condition: $condition) {\n    __typename\n    id\n    guestID\n    guest {\n      __typename\n      id\n      username\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    hotelID\n    hotel {\n      __typename\n      id\n      name\n      description\n      price\n      imageKey\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    startDate\n    endDate\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateBookingInput
  public var condition: ModelBookingConditionInput?

  public init(input: UpdateBookingInput, condition: ModelBookingConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateBooking", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateBooking: UpdateBooking? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateBooking": updateBooking.flatMap { $0.snapshot }])
    }

    public var updateBooking: UpdateBooking? {
      get {
        return (snapshot["updateBooking"] as? Snapshot).flatMap { UpdateBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateBooking")
      }
    }

    public struct UpdateBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guest", type: .object(Guest.selections)),
        GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("hotel", type: .object(Hotel.selections)),
        GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, guestId: GraphQLID, guest: Guest? = nil, hotelId: GraphQLID, hotel: Hotel? = nil, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "guest": guest.flatMap { $0.snapshot }, "hotelID": hotelId, "hotel": hotel.flatMap { $0.snapshot }, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var guestId: GraphQLID {
        get {
          return snapshot["guestID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "guestID")
        }
      }

      public var guest: Guest? {
        get {
          return (snapshot["guest"] as? Snapshot).flatMap { Guest(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "guest")
        }
      }

      public var hotelId: GraphQLID {
        get {
          return snapshot["hotelID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "hotelID")
        }
      }

      public var hotel: Hotel? {
        get {
          return (snapshot["hotel"] as? Snapshot).flatMap { Hotel(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "hotel")
        }
      }

      public var startDate: String {
        get {
          return snapshot["startDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var endDate: String {
        get {
          return snapshot["endDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "endDate")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Guest: GraphQLSelectionSet {
        public static let possibleTypes = ["Guest"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }

      public struct Hotel: GraphQLSelectionSet {
        public static let possibleTypes = ["Hotel"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .nonNull(.scalar(Int.self))),
          GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var price: Int {
          get {
            return snapshot["price"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var imageKey: String {
          get {
            return snapshot["imageKey"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageKey")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }
    }
  }
}

public final class DeleteBookingMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteBooking($input: DeleteBookingInput!, $condition: ModelBookingConditionInput) {\n  deleteBooking(input: $input, condition: $condition) {\n    __typename\n    id\n    guestID\n    guest {\n      __typename\n      id\n      username\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    hotelID\n    hotel {\n      __typename\n      id\n      name\n      description\n      price\n      imageKey\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    startDate\n    endDate\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteBookingInput
  public var condition: ModelBookingConditionInput?

  public init(input: DeleteBookingInput, condition: ModelBookingConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteBooking", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteBooking: DeleteBooking? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteBooking": deleteBooking.flatMap { $0.snapshot }])
    }

    public var deleteBooking: DeleteBooking? {
      get {
        return (snapshot["deleteBooking"] as? Snapshot).flatMap { DeleteBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteBooking")
      }
    }

    public struct DeleteBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guest", type: .object(Guest.selections)),
        GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("hotel", type: .object(Hotel.selections)),
        GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, guestId: GraphQLID, guest: Guest? = nil, hotelId: GraphQLID, hotel: Hotel? = nil, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "guest": guest.flatMap { $0.snapshot }, "hotelID": hotelId, "hotel": hotel.flatMap { $0.snapshot }, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var guestId: GraphQLID {
        get {
          return snapshot["guestID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "guestID")
        }
      }

      public var guest: Guest? {
        get {
          return (snapshot["guest"] as? Snapshot).flatMap { Guest(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "guest")
        }
      }

      public var hotelId: GraphQLID {
        get {
          return snapshot["hotelID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "hotelID")
        }
      }

      public var hotel: Hotel? {
        get {
          return (snapshot["hotel"] as? Snapshot).flatMap { Hotel(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "hotel")
        }
      }

      public var startDate: String {
        get {
          return snapshot["startDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var endDate: String {
        get {
          return snapshot["endDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "endDate")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Guest: GraphQLSelectionSet {
        public static let possibleTypes = ["Guest"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }

      public struct Hotel: GraphQLSelectionSet {
        public static let possibleTypes = ["Hotel"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .nonNull(.scalar(Int.self))),
          GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var price: Int {
          get {
            return snapshot["price"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var imageKey: String {
          get {
            return snapshot["imageKey"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageKey")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }
    }
  }
}

public final class SyncGuestsQuery: GraphQLQuery {
  public static let operationString =
    "query SyncGuests($filter: ModelGuestFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncGuests(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      username\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelGuestFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var lastSync: Int?

  public init(filter: ModelGuestFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.lastSync = lastSync
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("syncGuests", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncGuest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(syncGuests: SyncGuest? = nil) {
      self.init(snapshot: ["__typename": "Query", "syncGuests": syncGuests.flatMap { $0.snapshot }])
    }

    public var syncGuests: SyncGuest? {
      get {
        return (snapshot["syncGuests"] as? Snapshot).flatMap { SyncGuest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "syncGuests")
      }
    }

    public struct SyncGuest: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelGuestConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelGuestConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Guest"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }
    }
  }
}

public final class GetGuestQuery: GraphQLQuery {
  public static let operationString =
    "query GetGuest($id: ID!) {\n  getGuest(id: $id) {\n    __typename\n    id\n    username\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getGuest", arguments: ["id": GraphQLVariable("id")], type: .object(GetGuest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getGuest: GetGuest? = nil) {
      self.init(snapshot: ["__typename": "Query", "getGuest": getGuest.flatMap { $0.snapshot }])
    }

    public var getGuest: GetGuest? {
      get {
        return (snapshot["getGuest"] as? Snapshot).flatMap { GetGuest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getGuest")
      }
    }

    public struct GetGuest: GraphQLSelectionSet {
      public static let possibleTypes = ["Guest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class ListGuestsQuery: GraphQLQuery {
  public static let operationString =
    "query ListGuests($filter: ModelGuestFilterInput, $limit: Int, $nextToken: String) {\n  listGuests(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      username\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelGuestFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelGuestFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listGuests", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListGuest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listGuests: ListGuest? = nil) {
      self.init(snapshot: ["__typename": "Query", "listGuests": listGuests.flatMap { $0.snapshot }])
    }

    public var listGuests: ListGuest? {
      get {
        return (snapshot["listGuests"] as? Snapshot).flatMap { ListGuest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listGuests")
      }
    }

    public struct ListGuest: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelGuestConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelGuestConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Guest"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }
    }
  }
}

public final class SyncHotelsQuery: GraphQLQuery {
  public static let operationString =
    "query SyncHotels($filter: ModelHotelFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncHotels(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      description\n      price\n      imageKey\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelHotelFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var lastSync: Int?

  public init(filter: ModelHotelFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.lastSync = lastSync
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("syncHotels", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncHotel.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(syncHotels: SyncHotel? = nil) {
      self.init(snapshot: ["__typename": "Query", "syncHotels": syncHotels.flatMap { $0.snapshot }])
    }

    public var syncHotels: SyncHotel? {
      get {
        return (snapshot["syncHotels"] as? Snapshot).flatMap { SyncHotel(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "syncHotels")
      }
    }

    public struct SyncHotel: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelHotelConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelHotelConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Hotel"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .nonNull(.scalar(Int.self))),
          GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var price: Int {
          get {
            return snapshot["price"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var imageKey: String {
          get {
            return snapshot["imageKey"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageKey")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }
    }
  }
}

public final class GetHotelQuery: GraphQLQuery {
  public static let operationString =
    "query GetHotel($id: ID!) {\n  getHotel(id: $id) {\n    __typename\n    id\n    name\n    description\n    price\n    imageKey\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getHotel", arguments: ["id": GraphQLVariable("id")], type: .object(GetHotel.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getHotel: GetHotel? = nil) {
      self.init(snapshot: ["__typename": "Query", "getHotel": getHotel.flatMap { $0.snapshot }])
    }

    public var getHotel: GetHotel? {
      get {
        return (snapshot["getHotel"] as? Snapshot).flatMap { GetHotel(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getHotel")
      }
    }

    public struct GetHotel: GraphQLSelectionSet {
      public static let possibleTypes = ["Hotel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var price: Int {
        get {
          return snapshot["price"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class ListHotelsQuery: GraphQLQuery {
  public static let operationString =
    "query ListHotels($filter: ModelHotelFilterInput, $limit: Int, $nextToken: String) {\n  listHotels(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      description\n      price\n      imageKey\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelHotelFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelHotelFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listHotels", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListHotel.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listHotels: ListHotel? = nil) {
      self.init(snapshot: ["__typename": "Query", "listHotels": listHotels.flatMap { $0.snapshot }])
    }

    public var listHotels: ListHotel? {
      get {
        return (snapshot["listHotels"] as? Snapshot).flatMap { ListHotel(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listHotels")
      }
    }

    public struct ListHotel: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelHotelConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelHotelConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Hotel"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .nonNull(.scalar(Int.self))),
          GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var price: Int {
          get {
            return snapshot["price"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var imageKey: String {
          get {
            return snapshot["imageKey"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageKey")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }
    }
  }
}

public final class SyncBookingsQuery: GraphQLQuery {
  public static let operationString =
    "query SyncBookings($filter: ModelBookingFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncBookings(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      guestID\n      guest {\n        __typename\n        id\n        username\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      hotelID\n      hotel {\n        __typename\n        id\n        name\n        description\n        price\n        imageKey\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      startDate\n      endDate\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelBookingFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var lastSync: Int?

  public init(filter: ModelBookingFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.lastSync = lastSync
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("syncBookings", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(syncBookings: SyncBooking? = nil) {
      self.init(snapshot: ["__typename": "Query", "syncBookings": syncBookings.flatMap { $0.snapshot }])
    }

    public var syncBookings: SyncBooking? {
      get {
        return (snapshot["syncBookings"] as? Snapshot).flatMap { SyncBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "syncBookings")
      }
    }

    public struct SyncBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelBookingConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Booking"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("guest", type: .object(Guest.selections)),
          GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("hotel", type: .object(Hotel.selections)),
          GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, guestId: GraphQLID, guest: Guest? = nil, hotelId: GraphQLID, hotel: Hotel? = nil, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "guest": guest.flatMap { $0.snapshot }, "hotelID": hotelId, "hotel": hotel.flatMap { $0.snapshot }, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var guestId: GraphQLID {
          get {
            return snapshot["guestID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "guestID")
          }
        }

        public var guest: Guest? {
          get {
            return (snapshot["guest"] as? Snapshot).flatMap { Guest(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "guest")
          }
        }

        public var hotelId: GraphQLID {
          get {
            return snapshot["hotelID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "hotelID")
          }
        }

        public var hotel: Hotel? {
          get {
            return (snapshot["hotel"] as? Snapshot).flatMap { Hotel(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "hotel")
          }
        }

        public var startDate: String {
          get {
            return snapshot["startDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "startDate")
          }
        }

        public var endDate: String {
          get {
            return snapshot["endDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Guest: GraphQLSelectionSet {
          public static let possibleTypes = ["Guest"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("username", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, username: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var username: String {
            get {
              return snapshot["username"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "username")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }

        public struct Hotel: GraphQLSelectionSet {
          public static let possibleTypes = ["Hotel"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("price", type: .nonNull(.scalar(Int.self))),
            GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String {
            get {
              return snapshot["description"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var price: Int {
            get {
              return snapshot["price"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "price")
            }
          }

          public var imageKey: String {
            get {
              return snapshot["imageKey"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "imageKey")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class GetBookingQuery: GraphQLQuery {
  public static let operationString =
    "query GetBooking($id: ID!) {\n  getBooking(id: $id) {\n    __typename\n    id\n    guestID\n    guest {\n      __typename\n      id\n      username\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    hotelID\n    hotel {\n      __typename\n      id\n      name\n      description\n      price\n      imageKey\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    startDate\n    endDate\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getBooking", arguments: ["id": GraphQLVariable("id")], type: .object(GetBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getBooking: GetBooking? = nil) {
      self.init(snapshot: ["__typename": "Query", "getBooking": getBooking.flatMap { $0.snapshot }])
    }

    public var getBooking: GetBooking? {
      get {
        return (snapshot["getBooking"] as? Snapshot).flatMap { GetBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getBooking")
      }
    }

    public struct GetBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guest", type: .object(Guest.selections)),
        GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("hotel", type: .object(Hotel.selections)),
        GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, guestId: GraphQLID, guest: Guest? = nil, hotelId: GraphQLID, hotel: Hotel? = nil, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "guest": guest.flatMap { $0.snapshot }, "hotelID": hotelId, "hotel": hotel.flatMap { $0.snapshot }, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var guestId: GraphQLID {
        get {
          return snapshot["guestID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "guestID")
        }
      }

      public var guest: Guest? {
        get {
          return (snapshot["guest"] as? Snapshot).flatMap { Guest(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "guest")
        }
      }

      public var hotelId: GraphQLID {
        get {
          return snapshot["hotelID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "hotelID")
        }
      }

      public var hotel: Hotel? {
        get {
          return (snapshot["hotel"] as? Snapshot).flatMap { Hotel(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "hotel")
        }
      }

      public var startDate: String {
        get {
          return snapshot["startDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var endDate: String {
        get {
          return snapshot["endDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "endDate")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Guest: GraphQLSelectionSet {
        public static let possibleTypes = ["Guest"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }

      public struct Hotel: GraphQLSelectionSet {
        public static let possibleTypes = ["Hotel"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .nonNull(.scalar(Int.self))),
          GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var price: Int {
          get {
            return snapshot["price"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var imageKey: String {
          get {
            return snapshot["imageKey"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageKey")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }
    }
  }
}

public final class ListBookingsQuery: GraphQLQuery {
  public static let operationString =
    "query ListBookings($filter: ModelBookingFilterInput, $limit: Int, $nextToken: String) {\n  listBookings(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      guestID\n      guest {\n        __typename\n        id\n        username\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      hotelID\n      hotel {\n        __typename\n        id\n        name\n        description\n        price\n        imageKey\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      startDate\n      endDate\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    nextToken\n    startedAt\n  }\n}"

  public var filter: ModelBookingFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelBookingFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listBookings", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listBookings: ListBooking? = nil) {
      self.init(snapshot: ["__typename": "Query", "listBookings": listBookings.flatMap { $0.snapshot }])
    }

    public var listBookings: ListBooking? {
      get {
        return (snapshot["listBookings"] as? Snapshot).flatMap { ListBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listBookings")
      }
    }

    public struct ListBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelBookingConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("startedAt", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
        self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var startedAt: Int? {
        get {
          return snapshot["startedAt"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startedAt")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Booking"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("guest", type: .object(Guest.selections)),
          GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("hotel", type: .object(Hotel.selections)),
          GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, guestId: GraphQLID, guest: Guest? = nil, hotelId: GraphQLID, hotel: Hotel? = nil, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "guest": guest.flatMap { $0.snapshot }, "hotelID": hotelId, "hotel": hotel.flatMap { $0.snapshot }, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var guestId: GraphQLID {
          get {
            return snapshot["guestID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "guestID")
          }
        }

        public var guest: Guest? {
          get {
            return (snapshot["guest"] as? Snapshot).flatMap { Guest(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "guest")
          }
        }

        public var hotelId: GraphQLID {
          get {
            return snapshot["hotelID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "hotelID")
          }
        }

        public var hotel: Hotel? {
          get {
            return (snapshot["hotel"] as? Snapshot).flatMap { Hotel(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "hotel")
          }
        }

        public var startDate: String {
          get {
            return snapshot["startDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "startDate")
          }
        }

        public var endDate: String {
          get {
            return snapshot["endDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "endDate")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Guest: GraphQLSelectionSet {
          public static let possibleTypes = ["Guest"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("username", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, username: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var username: String {
            get {
              return snapshot["username"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "username")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }

        public struct Hotel: GraphQLSelectionSet {
          public static let possibleTypes = ["Hotel"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("price", type: .nonNull(.scalar(Int.self))),
            GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String {
            get {
              return snapshot["description"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var price: Int {
            get {
              return snapshot["price"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "price")
            }
          }

          public var imageKey: String {
            get {
              return snapshot["imageKey"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "imageKey")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateGuestSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateGuest {\n  onCreateGuest {\n    __typename\n    id\n    username\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateGuest", type: .object(OnCreateGuest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateGuest: OnCreateGuest? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateGuest": onCreateGuest.flatMap { $0.snapshot }])
    }

    public var onCreateGuest: OnCreateGuest? {
      get {
        return (snapshot["onCreateGuest"] as? Snapshot).flatMap { OnCreateGuest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateGuest")
      }
    }

    public struct OnCreateGuest: GraphQLSelectionSet {
      public static let possibleTypes = ["Guest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateGuestSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateGuest {\n  onUpdateGuest {\n    __typename\n    id\n    username\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateGuest", type: .object(OnUpdateGuest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateGuest: OnUpdateGuest? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateGuest": onUpdateGuest.flatMap { $0.snapshot }])
    }

    public var onUpdateGuest: OnUpdateGuest? {
      get {
        return (snapshot["onUpdateGuest"] as? Snapshot).flatMap { OnUpdateGuest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateGuest")
      }
    }

    public struct OnUpdateGuest: GraphQLSelectionSet {
      public static let possibleTypes = ["Guest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteGuestSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteGuest {\n  onDeleteGuest {\n    __typename\n    id\n    username\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteGuest", type: .object(OnDeleteGuest.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteGuest: OnDeleteGuest? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteGuest": onDeleteGuest.flatMap { $0.snapshot }])
    }

    public var onDeleteGuest: OnDeleteGuest? {
      get {
        return (snapshot["onDeleteGuest"] as? Snapshot).flatMap { OnDeleteGuest(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteGuest")
      }
    }

    public struct OnDeleteGuest: GraphQLSelectionSet {
      public static let possibleTypes = ["Guest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateHotelSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateHotel {\n  onCreateHotel {\n    __typename\n    id\n    name\n    description\n    price\n    imageKey\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateHotel", type: .object(OnCreateHotel.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateHotel: OnCreateHotel? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateHotel": onCreateHotel.flatMap { $0.snapshot }])
    }

    public var onCreateHotel: OnCreateHotel? {
      get {
        return (snapshot["onCreateHotel"] as? Snapshot).flatMap { OnCreateHotel(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateHotel")
      }
    }

    public struct OnCreateHotel: GraphQLSelectionSet {
      public static let possibleTypes = ["Hotel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var price: Int {
        get {
          return snapshot["price"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateHotelSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateHotel {\n  onUpdateHotel {\n    __typename\n    id\n    name\n    description\n    price\n    imageKey\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateHotel", type: .object(OnUpdateHotel.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateHotel: OnUpdateHotel? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateHotel": onUpdateHotel.flatMap { $0.snapshot }])
    }

    public var onUpdateHotel: OnUpdateHotel? {
      get {
        return (snapshot["onUpdateHotel"] as? Snapshot).flatMap { OnUpdateHotel(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateHotel")
      }
    }

    public struct OnUpdateHotel: GraphQLSelectionSet {
      public static let possibleTypes = ["Hotel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var price: Int {
        get {
          return snapshot["price"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteHotelSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteHotel {\n  onDeleteHotel {\n    __typename\n    id\n    name\n    description\n    price\n    imageKey\n    bookings {\n      __typename\n      items {\n        __typename\n        id\n        guestID\n        hotelID\n        startDate\n        endDate\n        _version\n        _deleted\n        _lastChangedAt\n        createdAt\n        updatedAt\n      }\n      nextToken\n      startedAt\n    }\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteHotel", type: .object(OnDeleteHotel.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteHotel: OnDeleteHotel? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteHotel": onDeleteHotel.flatMap { $0.snapshot }])
    }

    public var onDeleteHotel: OnDeleteHotel? {
      get {
        return (snapshot["onDeleteHotel"] as? Snapshot).flatMap { OnDeleteHotel(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteHotel")
      }
    }

    public struct OnDeleteHotel: GraphQLSelectionSet {
      public static let possibleTypes = ["Hotel"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("price", type: .nonNull(.scalar(Int.self))),
        GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
        GraphQLField("bookings", type: .object(Booking.selections)),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var price: Int {
        get {
          return snapshot["price"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "price")
        }
      }

      public var imageKey: String {
        get {
          return snapshot["imageKey"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageKey")
        }
      }

      public var bookings: Booking? {
        get {
          return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Booking: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelBookingConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
          GraphQLField("startedAt", type: .scalar(Int.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil, startedAt: Int? = nil) {
          self.init(snapshot: ["__typename": "ModelBookingConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "startedAt": startedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public var startedAt: Int? {
          get {
            return snapshot["startedAt"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "startedAt")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Booking"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
            GraphQLField("_deleted", type: .scalar(Bool.self)),
            GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, guestId: GraphQLID, hotelId: GraphQLID, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "hotelID": hotelId, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var guestId: GraphQLID {
            get {
              return snapshot["guestID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "guestID")
            }
          }

          public var hotelId: GraphQLID {
            get {
              return snapshot["hotelID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "hotelID")
            }
          }

          public var startDate: String {
            get {
              return snapshot["startDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "startDate")
            }
          }

          public var endDate: String {
            get {
              return snapshot["endDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "endDate")
            }
          }

          public var version: Int {
            get {
              return snapshot["_version"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_version")
            }
          }

          public var deleted: Bool? {
            get {
              return snapshot["_deleted"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "_deleted")
            }
          }

          public var lastChangedAt: Int {
            get {
              return snapshot["_lastChangedAt"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "_lastChangedAt")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateBookingSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateBooking {\n  onCreateBooking {\n    __typename\n    id\n    guestID\n    guest {\n      __typename\n      id\n      username\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    hotelID\n    hotel {\n      __typename\n      id\n      name\n      description\n      price\n      imageKey\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    startDate\n    endDate\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateBooking", type: .object(OnCreateBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateBooking: OnCreateBooking? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateBooking": onCreateBooking.flatMap { $0.snapshot }])
    }

    public var onCreateBooking: OnCreateBooking? {
      get {
        return (snapshot["onCreateBooking"] as? Snapshot).flatMap { OnCreateBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateBooking")
      }
    }

    public struct OnCreateBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guest", type: .object(Guest.selections)),
        GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("hotel", type: .object(Hotel.selections)),
        GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, guestId: GraphQLID, guest: Guest? = nil, hotelId: GraphQLID, hotel: Hotel? = nil, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "guest": guest.flatMap { $0.snapshot }, "hotelID": hotelId, "hotel": hotel.flatMap { $0.snapshot }, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var guestId: GraphQLID {
        get {
          return snapshot["guestID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "guestID")
        }
      }

      public var guest: Guest? {
        get {
          return (snapshot["guest"] as? Snapshot).flatMap { Guest(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "guest")
        }
      }

      public var hotelId: GraphQLID {
        get {
          return snapshot["hotelID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "hotelID")
        }
      }

      public var hotel: Hotel? {
        get {
          return (snapshot["hotel"] as? Snapshot).flatMap { Hotel(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "hotel")
        }
      }

      public var startDate: String {
        get {
          return snapshot["startDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var endDate: String {
        get {
          return snapshot["endDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "endDate")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Guest: GraphQLSelectionSet {
        public static let possibleTypes = ["Guest"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }

      public struct Hotel: GraphQLSelectionSet {
        public static let possibleTypes = ["Hotel"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .nonNull(.scalar(Int.self))),
          GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var price: Int {
          get {
            return snapshot["price"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var imageKey: String {
          get {
            return snapshot["imageKey"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageKey")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateBookingSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateBooking {\n  onUpdateBooking {\n    __typename\n    id\n    guestID\n    guest {\n      __typename\n      id\n      username\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    hotelID\n    hotel {\n      __typename\n      id\n      name\n      description\n      price\n      imageKey\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    startDate\n    endDate\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateBooking", type: .object(OnUpdateBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateBooking: OnUpdateBooking? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateBooking": onUpdateBooking.flatMap { $0.snapshot }])
    }

    public var onUpdateBooking: OnUpdateBooking? {
      get {
        return (snapshot["onUpdateBooking"] as? Snapshot).flatMap { OnUpdateBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateBooking")
      }
    }

    public struct OnUpdateBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guest", type: .object(Guest.selections)),
        GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("hotel", type: .object(Hotel.selections)),
        GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, guestId: GraphQLID, guest: Guest? = nil, hotelId: GraphQLID, hotel: Hotel? = nil, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "guest": guest.flatMap { $0.snapshot }, "hotelID": hotelId, "hotel": hotel.flatMap { $0.snapshot }, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var guestId: GraphQLID {
        get {
          return snapshot["guestID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "guestID")
        }
      }

      public var guest: Guest? {
        get {
          return (snapshot["guest"] as? Snapshot).flatMap { Guest(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "guest")
        }
      }

      public var hotelId: GraphQLID {
        get {
          return snapshot["hotelID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "hotelID")
        }
      }

      public var hotel: Hotel? {
        get {
          return (snapshot["hotel"] as? Snapshot).flatMap { Hotel(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "hotel")
        }
      }

      public var startDate: String {
        get {
          return snapshot["startDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var endDate: String {
        get {
          return snapshot["endDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "endDate")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Guest: GraphQLSelectionSet {
        public static let possibleTypes = ["Guest"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }

      public struct Hotel: GraphQLSelectionSet {
        public static let possibleTypes = ["Hotel"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .nonNull(.scalar(Int.self))),
          GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var price: Int {
          get {
            return snapshot["price"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var imageKey: String {
          get {
            return snapshot["imageKey"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageKey")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteBookingSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteBooking {\n  onDeleteBooking {\n    __typename\n    id\n    guestID\n    guest {\n      __typename\n      id\n      username\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    hotelID\n    hotel {\n      __typename\n      id\n      name\n      description\n      price\n      imageKey\n      bookings {\n        __typename\n        nextToken\n        startedAt\n      }\n      _version\n      _deleted\n      _lastChangedAt\n      createdAt\n      updatedAt\n    }\n    startDate\n    endDate\n    _version\n    _deleted\n    _lastChangedAt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteBooking", type: .object(OnDeleteBooking.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteBooking: OnDeleteBooking? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteBooking": onDeleteBooking.flatMap { $0.snapshot }])
    }

    public var onDeleteBooking: OnDeleteBooking? {
      get {
        return (snapshot["onDeleteBooking"] as? Snapshot).flatMap { OnDeleteBooking(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteBooking")
      }
    }

    public struct OnDeleteBooking: GraphQLSelectionSet {
      public static let possibleTypes = ["Booking"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guestID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("guest", type: .object(Guest.selections)),
        GraphQLField("hotelID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("hotel", type: .object(Hotel.selections)),
        GraphQLField("startDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("endDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("_deleted", type: .scalar(Bool.self)),
        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, guestId: GraphQLID, guest: Guest? = nil, hotelId: GraphQLID, hotel: Hotel? = nil, startDate: String, endDate: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Booking", "id": id, "guestID": guestId, "guest": guest.flatMap { $0.snapshot }, "hotelID": hotelId, "hotel": hotel.flatMap { $0.snapshot }, "startDate": startDate, "endDate": endDate, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var guestId: GraphQLID {
        get {
          return snapshot["guestID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "guestID")
        }
      }

      public var guest: Guest? {
        get {
          return (snapshot["guest"] as? Snapshot).flatMap { Guest(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "guest")
        }
      }

      public var hotelId: GraphQLID {
        get {
          return snapshot["hotelID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "hotelID")
        }
      }

      public var hotel: Hotel? {
        get {
          return (snapshot["hotel"] as? Snapshot).flatMap { Hotel(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "hotel")
        }
      }

      public var startDate: String {
        get {
          return snapshot["startDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startDate")
        }
      }

      public var endDate: String {
        get {
          return snapshot["endDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "endDate")
        }
      }

      public var version: Int {
        get {
          return snapshot["_version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_version")
        }
      }

      public var deleted: Bool? {
        get {
          return snapshot["_deleted"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "_deleted")
        }
      }

      public var lastChangedAt: Int {
        get {
          return snapshot["_lastChangedAt"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "_lastChangedAt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Guest: GraphQLSelectionSet {
        public static let possibleTypes = ["Guest"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Guest", "id": id, "username": username, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }

      public struct Hotel: GraphQLSelectionSet {
        public static let possibleTypes = ["Hotel"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .nonNull(.scalar(Int.self))),
          GraphQLField("imageKey", type: .nonNull(.scalar(String.self))),
          GraphQLField("bookings", type: .object(Booking.selections)),
          GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("_deleted", type: .scalar(Bool.self)),
          GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, description: String, price: Int, imageKey: String, bookings: Booking? = nil, version: Int, deleted: Bool? = nil, lastChangedAt: Int, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Hotel", "id": id, "name": name, "description": description, "price": price, "imageKey": imageKey, "bookings": bookings.flatMap { $0.snapshot }, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var price: Int {
          get {
            return snapshot["price"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "price")
          }
        }

        public var imageKey: String {
          get {
            return snapshot["imageKey"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageKey")
          }
        }

        public var bookings: Booking? {
          get {
            return (snapshot["bookings"] as? Snapshot).flatMap { Booking(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "bookings")
          }
        }

        public var version: Int {
          get {
            return snapshot["_version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_version")
          }
        }

        public var deleted: Bool? {
          get {
            return snapshot["_deleted"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "_deleted")
          }
        }

        public var lastChangedAt: Int {
          get {
            return snapshot["_lastChangedAt"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Booking: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelBookingConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
            GraphQLField("startedAt", type: .scalar(Int.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil, startedAt: Int? = nil) {
            self.init(snapshot: ["__typename": "ModelBookingConnection", "nextToken": nextToken, "startedAt": startedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public var startedAt: Int? {
            get {
              return snapshot["startedAt"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "startedAt")
            }
          }
        }
      }
    }
  }
}