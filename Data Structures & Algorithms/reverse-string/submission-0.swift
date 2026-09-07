class Solution {
    func reverseString(_ s: inout [Character]) {
    
     for i in 0..<s.count/2 { 
         let point1 = i 
     let point2 = s.count - 1 - i
     var temp : Character
        temp = s[point1]
        s[point1] = s[point2] 
        s[point2] = temp
     }
    }
}
