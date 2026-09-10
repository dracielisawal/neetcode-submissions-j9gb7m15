class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var candidate1 = 0
        var candidate2 = 0
        var count1 = 0
        var count2 = 0

        // Phase 1: Find candidates
        for num in nums {
            if num == candidate1 {
                count1 += 1
            } else if num == candidate2 {
                count2 += 1
            } else if count1 == 0 {
                candidate1 = num
                count1 = 1
            } else if count2 == 0 {
                candidate2 = num
                count2 = 1
            } else {
                count1 -= 1
                count2 -= 1
            }
        }

        // Phase 2: Verify candidates
        var actualCount1 = 0
        var actualCount2 = 0

        for num in nums {
            if num == candidate1 {
                actualCount1 += 1
            } else if num == candidate2 {
                actualCount2 += 1
            }
        }

        var result = [Int]()

        if actualCount1 > nums.count / 3 {
            result.append(candidate1)
        }

        if actualCount2 > nums.count / 3 {
            result.append(candidate2)
        }

        return result
    }
}
