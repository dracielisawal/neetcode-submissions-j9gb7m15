class Solution
{ 
   func lengthOfLongestSubstring(_ s: String) -> Int {
    
    var map = [Character:Int]()
    let arr = Array(s)

    var left = 0
    var maxLen = 0

    for right in 0..<arr.count {

        let char = arr[right]

        if let prevIndex = map[char] {
            left = max(left, prevIndex + 1)
        }

        map[char] = right

        maxLen = max(maxLen, right - left + 1)
    }

    return maxLen
}
}