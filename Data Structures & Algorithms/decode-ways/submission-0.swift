class Solution {
   func numDecodings(_ s: String) -> Int {
    
    var chars  = Array(s)
    var dp = Array(repeating: 0, count: chars.count)
    dp[0] = chars[0] == "0" ? 0 : 1
    for i in 1..<chars.count {
    let currentCharSingle = Int(String(chars[i]))!
    let currentCharWithPrev = Int(String(chars[i-1]) + String(chars[i]))!

    if currentCharSingle >= 1 && currentCharSingle <= 9 {
        dp[i] += dp[i-1]
    }

    if currentCharWithPrev >= 10 && currentCharWithPrev <= 26 {
        if i == 1 {
            dp[i] += 1
        } else {
            dp[i] += dp[i-2]
        }
    }
   
    }
    return dp[chars.count - 1]
    }
}
