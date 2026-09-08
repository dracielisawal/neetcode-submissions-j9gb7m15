class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
     var set : Set<Int> = []
     var hasDuplicate : Bool = false
     for num in nums { 
        if set.contains(num) 
        { hasDuplicate = true 
        return true 
        }
        else{ set.insert(num)}
     }

     return hasDuplicate
    }
}
