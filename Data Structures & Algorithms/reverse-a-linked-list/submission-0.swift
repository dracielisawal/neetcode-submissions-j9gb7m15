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
    func reverseList(_ head: ListNode?) -> ListNode? {
    var current = head
    var prev: ListNode? = nil
    
    while current != nil {
        let nextTemp = current?.next   // store next
        current?.next = prev           // reverse link
        prev = current                // move prev forward
        current = nextTemp            // move current forward
    }
    
    return prev
}
}
