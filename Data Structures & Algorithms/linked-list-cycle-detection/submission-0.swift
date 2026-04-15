/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
 func hasCycle(_ head: ListNode?) -> Bool {
    var visited = Set<ObjectIdentifier>()
    var current = head
    
    while let node = current {
        let id = ObjectIdentifier(node)
        
        if visited.contains(id) {
            return true
        }
        
        visited.insert(id)
        current = node.next
    }
    
    return false
}
}
