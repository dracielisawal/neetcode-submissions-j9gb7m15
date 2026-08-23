class Solution {
   
    var memo: [Int: Int] = [:]
func climbStairs(_ n: Int) -> Int {
    if n == 1 { return 1 }
    if n == 2 { return 2 }
    
   if let result  = memo[n]  { return result}
    
    // 2. otherwise compute it
    let result = climbStairs(n-1) + climbStairs(n-2)
    memo[n] = result
    
    // 3. save it to memo before returning
    
    return result
}
    }

