//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class LineGroup: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var lineIdentifier: [String]?

    public var naptanIdReference: String?

    public var stationAtcoCode: String?

    public init(lineIdentifier: [String]? = nil, naptanIdReference: String? = nil, stationAtcoCode: String? = nil) {
        self.lineIdentifier = lineIdentifier
        self.naptanIdReference = naptanIdReference
        self.stationAtcoCode = stationAtcoCode
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        lineIdentifier = jsonDictionary.json(atKeyPath: "lineIdentifier")
        naptanIdReference = jsonDictionary.json(atKeyPath: "naptanIdReference")
        stationAtcoCode = jsonDictionary.json(atKeyPath: "stationAtcoCode")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let lineIdentifier = lineIdentifier {
            dictionary["lineIdentifier"] = lineIdentifier
        }
        if let naptanIdReference = naptanIdReference {
            dictionary["naptanIdReference"] = naptanIdReference
        }
        if let stationAtcoCode = stationAtcoCode {
            dictionary["stationAtcoCode"] = stationAtcoCode
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
