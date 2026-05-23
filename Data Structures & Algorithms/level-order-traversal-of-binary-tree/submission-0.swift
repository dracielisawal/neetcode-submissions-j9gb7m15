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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result: [[Int]] = []
        var queue: [TreeNode] = []
        if let root = root {
            queue.append(root)
            var levZero = [Int]()
            levZero.append(root.val)
            result.append(levZero)
        }
        while !queue.isEmpty {
            var level: [Int] = []
            let count = queue.count
            for _ in 0..<count {
                let node = queue.removeFirst()
                
                if let left = node.left {
                    level.append(left.val)
                    queue.append(left)
                }
                if let right = node.right {
                    level.append(right.val)
                    queue.append(right)
                }
            }
            if level.count > 0 {
                result.append(level)
            }
        }
        return result
       }
}
