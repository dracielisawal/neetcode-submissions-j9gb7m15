/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func rightSideView(_ root: TreeNode?) -> [Int] {
    var result: [[Int]] = []
    var queue: [TreeNode] = []

    if let root = root {
        queue.append(root)
    }

    while !queue.isEmpty {
        let levelSize = queue.count
        var currentLevel: [Int] = []

        for _ in 0..<levelSize {
            let node = queue.removeFirst()

            currentLevel.append(node.val)

            if let left = node.left {
                queue.append(left)
            }

            if let right = node.right {
                queue.append(right)
            }
        }

        result.append(currentLevel)
    }

    return result.compactMap { $0.last }
}
}
