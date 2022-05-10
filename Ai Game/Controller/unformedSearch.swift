//
//  unformedSearch.swift
//  Ai Game
//
//  Created by Khaled abdelmohsen on 10/05/2022.
//

import Foundation
class UnformedSearch{
    func resolveBFS(_ tree: SimpleTree) -> [Int] {

        var result = [Int]()
        var queueTree = [tree]

        while !queueTree.isEmpty {

            let current = queueTree.remove(at: 0) // FIFO - remove the first entry
            result.append(current.value) // process node
            if let children = current.children { // here you explore all the children, if was a binary tree you should just explore left and right node, for example.
                for tree in children {
                    queueTree.append(tree)
                }
            }
        }

        return result
    }
}
