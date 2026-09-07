class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
     var arr1 = nums
     let arr1Count = nums.count
     for i in 0..<arr1.count{
        arr1.append(arr1[i])
        }
     return arr1
    }
}
