class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var dp = Array(repeating: amount + 1, count: amount + 1)
        dp[0] = 0
      if amount == 0 {
         return 0}
        for sum in 1...amount {
            for coin in coins {
                if sum - coin >= 0 {
                    dp[sum] = min(dp[sum], dp[sum - coin] + 1)
                }
            }
        }
       

        if dp[amount] == amount + 1 {
            return -1
        } 
       
        
        else {
            return dp[amount]
        }
    }
}
