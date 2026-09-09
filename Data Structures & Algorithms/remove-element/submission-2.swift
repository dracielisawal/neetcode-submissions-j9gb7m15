class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var l = 0
        var r = nums.count - 1

        while l <= r {
            if nums[r] == val {
                r -= 1
            } else if nums[l] == val {
                nums.swapAt(l, r)
                l += 1
                r -= 1
            } else {
                l += 1
            }
        }

        return l
    }
}