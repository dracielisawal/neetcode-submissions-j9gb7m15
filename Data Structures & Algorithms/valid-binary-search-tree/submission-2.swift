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
        if root == nil{
            return true
        }
        else if root?.left == nil && root?.right == nil{
            return true
        }
        else
        {
            if let left = root?.left?.val, let right = root?.right?.val, let rootVal = root?.val {
                if left < rootVal && rootVal < right{
                    return isValidBST(root?.left) && isValidBST(root?.right)
                }
                else{
                    return false
                }
            }
            else{
                return false
            }
        }
       }
}
