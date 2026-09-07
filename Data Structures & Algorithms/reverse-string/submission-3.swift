class Solution {
    func reverseString(_ s: inout [Character]) {
    
     for i in 0..<s.count/2 { 
         let l = i 
     let r = s.count - 1 - i
     var t : Character
        t = s[l]
        s[l] = s[r] 
        s[r] = t
     }
    }
}
