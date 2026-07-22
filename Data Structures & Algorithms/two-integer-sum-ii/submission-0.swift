class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1

        var result = Array(repeating: 0, count: 2)

        while numbers[left] + numbers[right] != target {
            if numbers[left] + numbers[right] < target {
                left += 1
            } else {
                right -= 1
            }
        }

        result[0] = left + 1
        result[1] = right + 1

        return result
    }
}