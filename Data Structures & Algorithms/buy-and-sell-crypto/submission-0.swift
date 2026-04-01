class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit : Int = 0
        var left : Int = 0
        var right : Int = 1
        
        while(right < prices.count){
        if prices[right] > prices[left]{
            maxProfit = max(prices[right] -  prices[left], maxProfit)
            right += 1
        }
        else {
            left = right
            right += 1
        }
        }
        
        return maxProfit
      }
}
