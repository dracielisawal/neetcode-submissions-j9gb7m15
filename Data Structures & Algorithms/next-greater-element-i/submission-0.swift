class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var stack = [Int]()
        var dict: [Int: Int] = [:]

        for num in nums2 {
            while let top = stack.last, top < num {
                dict[top] = num
                stack.removeLast()
            }
            stack.append(num)
        }

        var finalAns = [Int]()
        for num in nums1 {
            finalAns.append(dict[num] ?? -1)
        }
        return finalAns
    }
}