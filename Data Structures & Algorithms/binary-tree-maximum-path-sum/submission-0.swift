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
     var globalMax = Int.min
        func maxPathSum(_ root: TreeNode?) -> Int {
        if root == nil {return 0}
        
          dfs(root)
            return globalMax
        }
        func dfs(_ node: TreeNode?) -> Int {
            guard let node = node else{
                return 0 //base case of recursion
            }
            var leftMax = max(0, dfs(node.left))
            var rightMax = max(0, dfs(node.right))
            var candidate = node.val + leftMax + rightMax
            
            globalMax = max(globalMax, candidate)
            return node.val + max(leftMax,rightMax)
        }
}
