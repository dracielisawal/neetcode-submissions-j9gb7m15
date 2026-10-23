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
    func goodNodes(_ root: TreeNode?) -> Int {

        func dfs(_ root: TreeNode?, _ maxSoFar: Int) -> Int {
            guard let root = root else { return 0 }

            if root.val >= maxSoFar {
                let newMax = root.val
                return 1 + dfs(root.left, newMax)
                         + dfs(root.right, newMax)
            } else {
                return dfs(root.left, maxSoFar)
                     + dfs(root.right, maxSoFar)
            }
        }

        return dfs(root, Int.min)
    }
}
