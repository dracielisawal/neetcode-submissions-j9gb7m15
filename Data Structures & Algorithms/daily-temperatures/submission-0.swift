class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [Int]()
        var result = Array(repeating: 0, count: temperatures.count)

        for i in 0..<temperatures.count {

            while let top = stack.last,
                  temperatures[i] > temperatures[top] {

                let diff = i - top
                result[top] = diff
                stack.removeLast()
            }

            stack.append(i)
        }

        return result
    }
}