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
    func traverseBST(root: TreeNode?, k: Int) -> Int {

    guard let root = root else {
        return -1
    }

    let left = traverseBST(root: root.left, k: k)

    if left != -1 {
        return left
    }

    count += 1

    if count == k {
        return root.val
    }

    return traverseBST(root: root.right, k: k)
}
}
