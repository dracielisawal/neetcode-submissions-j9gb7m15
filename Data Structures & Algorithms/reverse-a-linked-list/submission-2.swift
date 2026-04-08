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
    var cur = head
    var prev: ListNode? = nil
    
    while cur != nil {
        let nex = cur?.next   // store next
        cur?.next = prev           // reverse link
        prev = cur               // move prev forward
        cur = nex          // move current forward
    }
    
    return prev
}
}
