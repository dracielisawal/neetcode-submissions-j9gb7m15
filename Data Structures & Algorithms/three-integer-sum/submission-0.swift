class Solution {
   func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedArr = nums.sorted()
        var result: [[Int]] = []

        for i in 0..<sortedArr.count - 2 {
            // Skip duplicates for i
            if i > 0 && sortedArr[i] == sortedArr[i - 1] {
                continue
            }

            var left = i + 1
            var right = sortedArr.count - 1

            while left < right {
                let sum = sortedArr[i] + sortedArr[left] + sortedArr[right]

                if sum == 0 {
                    result.append([sortedArr[i], sortedArr[left], sortedArr[right]])

                    // Skip duplicates
                    while left < right && sortedArr[left] == sortedArr[left + 1] {
                        left += 1
                    }
                    while left < right && sortedArr[right] == sortedArr[right - 1] {
                        right -= 1
                    }

                    left += 1
                    right -= 1

                } else if sum < 0 {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }

        return result
       }
}
