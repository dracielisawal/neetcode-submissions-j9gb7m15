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
  var map : [ObjectIdentifier:Node] = [:]
    func cloneGraph(_ node: Node?) -> Node? {
        var cloneNode : Node?
        
        cloneNode = dfs(node)
        return cloneNode
    }
    func dfs(_ node: Node?) -> Node? {

    guard let node = node else {
        return nil
    }

    let id = ObjectIdentifier(node)

    if let cloned = map[id] {
        return cloned
    }

    let newNode = Node(node.val)
    map[id] = newNode

    for neigh in node.neighbors {
        newNode.neighbors.append(dfs(neigh))
    }

    return newNode
}
}