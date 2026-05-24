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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.isEmpty || inorder.isEmpty {
            return nil
        }
        var root = TreeNode(preorder[0])
        
        if let mid = inorder.firstIndex(of: preorder[0]){
            let leftInorder = Array(inorder[0..<mid])
                let rightInorder = Array(inorder[(mid+1)...])

                let leftPreorder = Array(preorder[1..<mid+1])
                let rightPreorder = Array(preorder[(mid+1)...])
            root.left = buildTree(leftPreorder, leftInorder)
            root.right = buildTree(rightPreorder, rightInorder)
        }
       
        return root
        }
}
