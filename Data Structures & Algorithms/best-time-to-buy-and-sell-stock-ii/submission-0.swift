class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        var hold = Array(repeating: 0, count: n)
        var notHold = Array(repeating: 0, count: n)
        
        hold[0] = -prices[0]
        notHold[0] = 0
        
        for i in 1..<n {
            hold[i] = max(notHold[i-1] - prices[i], hold[i-1])
            notHold[i] = max(hold[i-1] + prices[i], notHold[i-1])
        }
        
        return notHold[n-1]
    }
}
