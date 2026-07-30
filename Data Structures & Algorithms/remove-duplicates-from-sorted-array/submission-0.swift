class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {

        guard !nums.isEmpty else { return 0 }

        var write = 1

        for read in 1..<nums.count {
            if nums[read] != nums[read - 1] {
                nums[write] = nums[read]
                write += 1
            }
        }

        return write
    }
}