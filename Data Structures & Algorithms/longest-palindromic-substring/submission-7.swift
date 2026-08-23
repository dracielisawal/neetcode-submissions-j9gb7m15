class Solution {
 var memo: [Int: [Int: Bool]] = [:]
var longestString = 0
var bestStart = 0

func isPalindrome(_ chars: [Character], _ i: Int, _ j: Int) -> Bool {
    if i >= j {
        return true
    }
    
    if let cached = memo[i]?[j] {
        return cached
    }
    
    if chars[i] != chars[j] {
        memo[i, default: [:]][j] = false
        return false
    }
    
    let innerIsPalindrome = isPalindrome(chars, i+1, j-1)
    
    if innerIsPalindrome {
        if j - i + 1 > longestString {
            longestString = j - i + 1
            bestStart = i
        }
    }
    
    memo[i, default: [:]][j] = innerIsPalindrome
    return innerIsPalindrome
}

func longestPalindrome(_ s: String) -> String {
    let chars = Array(s)
    
    if chars.count == 1 { return s }
    if chars.count == 2 {
        if chars[0] == chars[1] { return s }
        else { return String(chars[0]) }
    }
    
    let n = chars.count
    memo = [:]
    longestString = 0
    bestStart = 0
    
    for i in 0..<n {
        for j in i..<n {
            _ = isPalindrome(chars, i, j)
        }
    }
    
    return String(chars[bestStart..<(bestStart + longestString)])
}
}
