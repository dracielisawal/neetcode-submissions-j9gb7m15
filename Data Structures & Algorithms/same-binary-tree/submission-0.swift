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
      func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        var queue1 : [TreeNode?] = []
        var queue2 : [TreeNode?] = []
        
        queue1.append(p)
        queue2.append(q)
        
        while !queue1.isEmpty && !queue2.isEmpty {
            
            let node1 = queue1.removeFirst()
            let node2 = queue2.removeFirst()
            
            if node1 == nil && node2 == nil
            {
                continue
            }
            if(node1?.val == node2?.val) {
                
                queue1.append(node1?.left)
                queue1.append(node1?.right)
                
                queue2.append(node2?.left)
                queue2.append(node2?.right)
            }
            else {
                return false
            }
          
        }
        return true
  
    }
}

