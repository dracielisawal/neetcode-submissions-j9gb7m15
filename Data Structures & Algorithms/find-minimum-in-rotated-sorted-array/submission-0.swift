class Solution {
      func findMin(_ nums: [Int]) -> Int {
        //find minimum of the rotated array
        //rotated n times mtlb max number at n-1, min number at n. So basically we have to find how many times was the array rotated
        //to find that we check if the left and right are sorted
        
        var low = 0
        var high = nums.count - 1
        
        while low < high {
                let mid = low + (high - low) / 2
                
                if nums[mid] < nums[high] { //right side is sorted
                    high = mid
                } else  { //left side is sorted
                    low = mid+1
                }
            }
            return nums[low]
      }
        
}
