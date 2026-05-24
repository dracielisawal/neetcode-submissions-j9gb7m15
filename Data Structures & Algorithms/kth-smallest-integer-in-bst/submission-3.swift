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
   var count = 0
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        
      

       guard let root = root else {
           return -1
       }

       let left = kthSmallest(root.left,k)

       if left != -1 {
           return left
       }

       count += 1

       if count == k {
           return root.val
       }

       return kthSmallest(root.right,k)
   }
    }

