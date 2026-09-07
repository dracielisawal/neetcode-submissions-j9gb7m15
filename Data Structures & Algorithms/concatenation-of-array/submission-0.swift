class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
     var arr1 = nums
     var arr2 = nums 
     for i in 0..<arr2.count { arr1.append(arr2[i])}
     return arr1
    }
}
