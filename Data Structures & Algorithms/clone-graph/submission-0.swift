/*
Definition for a Node.
class Node {
    var val: Int
    var neighbors: [Node?]
    init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
*/

class Solution {
   func cloneGraph(_ node: Node?) -> Node? {
            let cloneNode : Node?
            if let node = node {
                cloneNode = Node(1)
            cloneNode!.val = node.val
                return cloneNode
            }
            else {
            return node
            }
        }
}