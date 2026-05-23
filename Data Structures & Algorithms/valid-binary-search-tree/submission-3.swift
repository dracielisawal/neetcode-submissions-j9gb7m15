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
   func isValidBST(_ root: TreeNode?) -> Bool {
    return validate(root, nil, nil)
}

func validate(_ node: TreeNode?, _ min: Int?, _ max: Int?) -> Bool {

    guard let node = node else {
        return true
    }

    if let min = min, node.val <= min {
        return false
    }

    if let max = max, node.val >= max {
        return false
    }

    return validate(node.left, min, node.val)
        &&
           validate(node.right, node.val, max)
}
}
