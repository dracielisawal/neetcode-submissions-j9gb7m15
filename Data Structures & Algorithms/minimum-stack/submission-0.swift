class MinStack {
  
   var stack: [(value: Int, minSoFar: Int)] = []
    init() {

    }

   func push(_ val: Int) {
    if stack.isEmpty {
        stack.append((value: val, minSoFar: val))
    } else {
        let currentMin = min(val, stack.last!.minSoFar)
        stack.append((value: val, minSoFar: currentMin))
    }
}

    func pop() {
    stack.removeLast()
}

   func top() -> Int {
    return stack.last!.value
}

   func getMin() -> Int {
    return stack.last!.minSoFar
}
}
