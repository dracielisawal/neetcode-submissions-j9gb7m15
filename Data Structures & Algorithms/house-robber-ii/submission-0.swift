class Solution {
   
   func rob(_ nums: [Int]) -> Int {
    if nums.count == 1 {
        return nums[0]
    }

    let withoutFirst = Array(nums.dropFirst())
    let withoutLast = Array(nums.dropLast())

    return max(robHouse1(withoutFirst), robHouse1(withoutLast))
}
func robHouse1(_ nums : [Int]) -> Int 
{
    var memo : [Int : Int] = [:]
    
    func helper(_ i: Int) -> Int {
        if i == 0 { return nums[0] }
        if i == 1 { return max(nums[0], nums[1]) }
        
        if let result = memo[i] {
            return result
        } else {
            let result = max(helper(i-1), helper(i-2) + nums[i])
            memo[i] = result
            return result
        }
    }
    
    return helper(nums.count - 1)
}
    
}