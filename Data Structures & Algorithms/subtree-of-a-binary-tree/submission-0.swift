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

    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {

        // if main tree ends
        if root == nil {
            return false
        }

        // check if subtree starts here
        if isSameTree(root, subRoot) {
            return true
        }

        // otherwise keep searching
        return isSubtree(root?.left, subRoot)
            || isSubtree(root?.right, subRoot)
    }

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {

        // both empty
        if p == nil && q == nil {
            return true
        }

        // one empty
        if p == nil || q == nil {
            return false
        }

        // values differ
        if p!.val != q!.val {
            return false
        }

        // compare left and right
        return isSameTree(p?.left, q?.left)
            && isSameTree(p?.right, q?.right)
    }
}