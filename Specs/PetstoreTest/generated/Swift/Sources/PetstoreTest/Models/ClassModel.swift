//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

/** Model for testing model with "_class" property */
public class ClassModel: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var `class`: String?

    public init(`class`: String? = nil) {
        self.`class` = `class`
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        `class` = jsonDictionary.json(atKeyPath: "_class")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let `class` = `class` {
            dictionary["_class"] = `class`
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
