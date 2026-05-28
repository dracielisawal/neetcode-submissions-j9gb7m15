class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
    
            
            var low = 0
            var high = nums.count - 1
            
            while low <= high {
                    let mid = low + (high - low) / 2
                if nums[mid] == target {
                    return mid
                }
                if nums[mid] <= nums[high] {
                    
                    if nums[mid] < target && target <= nums[high] {
                        low = mid + 1
                    } else {
                        high = mid - 1
                    }
                }
                // Left side sorted
                else {
                    if nums[low] <= target && target < nums[mid] {
                        high = mid - 1
                    } else {
                        low = mid + 1
                           }
                       }
                   }
                   
                   return -1
               }
}
