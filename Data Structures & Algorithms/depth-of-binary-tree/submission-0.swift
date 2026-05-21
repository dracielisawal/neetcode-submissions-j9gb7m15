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

class Solution
{
func maxDepth(_ root: TreeNode?) -> Int {

    var depth = 0
    var queue: [TreeNode] = []

    if let root = root {
        queue.append(root)
    }

    while !queue.isEmpty {

        let levelSize = queue.count

        for _ in 0..<levelSize {

            let current = queue.removeFirst()

            if let left = current.left {
                queue.append(left)
            }

            if let right = current.right {
                queue.append(right)
            }
        }

        depth += 1
    }

    return depth
}
}
