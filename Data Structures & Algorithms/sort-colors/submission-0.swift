class Solution {
    func sortColors(_ nums: inout [Int]) {
        var left = 0 
        var mid = 0 
        var right = nums.count - 1
        while mid <= right { 
            if nums[mid] == 0 {
             nums.swapAt(mid, left)
             left = left+1
              mid = mid+1
            }
            else if nums[mid] == 1{
              mid = mid + 1
            }
            else if nums[mid] == 2{
             nums.swapAt(mid, right) 
             right = right - 1

            }
        }
    }
}
