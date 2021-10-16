//
//  Struct.swift
//  NBT Edit
//
//  Created by Brendan Ballon on 10/11/21.
//

import Foundation

// public struct gameData {
//    let title: String
//    let nbtKey: String
//    let nbtVal: NSObject
//    let children: [gameData]
//
//    init(title: String, nbtKey: String, nbtVal: NSObject, children: [gameData] = []) {
//        self.title = title
//        self.nbtKey = nbtKey
//        self.nbtVal = nbtVal
//        self.children = children
//    }
//
//    init?(title: String, content: Any) {
//            // Check that the content is a dictionary and that it contains
//            // locDict & jsonDict and both are dictionaries
//            guard let content = content as? [String: Any],
//                let loc = content["locDict"] as? [String: String],
//                let json = content["jsonDict"] as? [String: String] else {
//                    return nil
//            }
//
//            // Check that both dictionaries contains same keys
//            let locKeys = loc.keys.sorted()
//            let jsonKeys = json.keys.sorted()
//            guard locKeys == jsonKeys else {
//                return nil
//            }
//
//            // Initialize top level item
//            self.title = title
//            self.loc = "locDict"
//            self.json = "jsonDict"
//            self.children = locKeys.map { key in
//                // We can force unwrap here because we already checked that
//                // both dictionaries contains same keys
//                Item(title: key, loc: loc[key]!, json: json[key]!)
//            }
//        }
// }
// public struct Item {
//    let name: String
//    var childrens: [Item] = []
//
//    /// Create a helper function to recursivly create items
//    ///
//    /// - Parameters:
//    ///   - parents: number of parent items
//    ///   - childrens: number of children for each parent item
//    /// - Returns: array of Item
//    static func itemsForNumberOf(parents: Int, childrens: Int) -> [Item] {
//        var items: [Item] = []
//        for parentID in 1 ... parents {
//            var parent = Item(name: "Index \(parentID)", childrens: [])
//            for childrenID in 1 ... childrens {
//                let children = Item(name: "Index \(parentID).\(childrenID)", childrens: [])
//                parent.childrens.append(children)
//            }
//            items.append(parent)
//        }
//        return items
//    }
// }
