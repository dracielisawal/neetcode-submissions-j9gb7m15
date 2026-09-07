class Solution {
    func reverseString(_ s: inout [Character]) {
    
     for i in 0..<s.count/2 { 
         let pt1 = i 
     let pt2 = s.count - 1 - i
     var tmp : Character
        tmp = s[pt1]
        s[pt1] = s[pt2] 
        s[pt2] = tmp
     }
    }
}
