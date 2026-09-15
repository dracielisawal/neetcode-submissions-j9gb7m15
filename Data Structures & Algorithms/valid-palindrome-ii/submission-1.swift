class Solution {
    func validPalindrome(_ s: String) -> Bool {
    let chars = Array(s)
    
    var left = 0
    var right = chars.count - 1
    
    while left < right {
        
        if chars[left] == chars[right] {
            left += 1
            right -= 1
        } else {
            
            // Option 1: delete left
            var l1 = left + 1
            var r1 = right
            
            while l1 < r1 && chars[l1] == chars[r1] {
                l1 += 1
                r1 -= 1
            }
            
            if l1 >= r1 {
                return true
            }
            
            // Option 2: delete right
            var l2 = left
            var r2 = right - 1
            
            while l2 < r2 && chars[l2] == chars[r2] {
                l2 += 1
                r2 -= 1
            }
            
            return l2 >= r2
        }
    }
    
    return true
}
}