class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        if nums.isEmpty { return 0 }

        var maxLength = 1
        var startOfSeq = 0
        
        let set = Set(nums)
        
        for num in nums {
            var currMaxLength = 1
            
            if set.contains(num - 1) {
                continue
            } else {
                startOfSeq = num
                
                while set.contains(startOfSeq + 1) {
                    startOfSeq += 1          // ✅ move forward
                    currMaxLength += 1
                }
                
                if currMaxLength > maxLength {
                    maxLength = currMaxLength
                }
            }
        }
        
        return maxLength
    }
}