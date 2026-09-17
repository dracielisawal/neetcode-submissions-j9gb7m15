class Solution {
    
func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {

var deque: [Int] = []
var front = 0
var result: [Int] = []

for i in 0..<nums.count {

    // Remove indices outside the window
    if front < deque.count && deque[front] <= i - k {
        front += 1
    }

    // Remove smaller elements from the back
    while deque.count > front && nums[deque.last!] <= nums[i] {
        deque.removeLast()
    }

    deque.append(i)

    // Window is ready
    if i >= k - 1 {
        result.append(nums[deque[front]])
    }
}
return result
    }
}
