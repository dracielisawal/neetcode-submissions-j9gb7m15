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
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }

        let leftHeight = height(root?.left)
        let rightHeight = height(root?.right)

        return abs(leftHeight - rightHeight) <= 1 &&
               isBalanced(root?.left) &&
               isBalanced(root?.right)
    }

    func height(_ node: TreeNode?) -> Int {
        if node == nil {
            return 0
        }

        let leftHeight = height(node?.left)
        let rightHeight = height(node?.right)

        return 1 + max(leftHeight, rightHeight)
    }
}

