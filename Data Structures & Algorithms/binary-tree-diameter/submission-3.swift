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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    var diameter = 0

    func height(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        let l = height(root.left)
        let r = height(root.right)

        diameter = max(diameter, l + r)

        return 1 + max(l,r)
    }

    _ = height(root)
    return diameter
}
}
