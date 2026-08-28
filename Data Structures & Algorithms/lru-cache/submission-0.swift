class LRUCache {

    class Node {
        var key: Int
        var value: Int
        var next: Node?
        var prev: Node?

        init(_ key: Int, _ value: Int) {
            self.key = key
            self.value = value
        }
    }

    var map: [Int: Node] = [:]
    var capacity: Int

    let head = Node(0, 0)
    let tail = Node(0, 0)

    init(_ capacity: Int) {
        self.capacity = capacity

        head.next = tail
        tail.prev = head
    }

    func get(_ key: Int) -> Int {
        guard let node = map[key] else {
            return -1
        }

        moveToFront(node)
        return node.value
    }

    func put(_ key: Int, _ value: Int) {

        // Key already exists
        if let node = map[key] {
            node.value = value
            moveToFront(node)
            return
        }

        // New key
        let node = Node(key, value)
        map[key] = node
        insertAtFront(node)

        // Evict LRU
        if map.count > capacity {
            let lru = tail.prev!

            remove(lru)
            map.removeValue(forKey: lru.key)
        }
    }

    func moveToFront(_ node: Node) {
        remove(node)
        insertAtFront(node)
    }

    func remove(_ node: Node) {
        node.prev!.next = node.next
        node.next!.prev = node.prev
    }

    func insertAtFront(_ node: Node) {
        node.next = head.next
        node.prev = head

        head.next!.prev = node
        head.next = node
    }
}