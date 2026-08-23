class Solution {
    var longestString = 0
var bestStart = 0

func isPalindrome(_ chars: [Character], _ i: Int, _ j: Int) -> Bool {
    if i >= j {
        return true
    }
    if chars[i] != chars[j] {
        return false
    }
    
    let innerIsPalindrome = isPalindrome(chars, i+1, j-1)
    
    if innerIsPalindrome {
        if j - i + 1 > longestString {
            longestString = j - i + 1
            bestStart = i
        }
    }
    
    return innerIsPalindrome
}

func longestPalindrome(_ s: String) -> String {
    let chars = Array(s)
    let n = chars.count
    longestString = 0
    bestStart = 0
    if chars.count == 1 {return s}
    
    for i in 0..<n {
        for j in i..<n {
            _ = isPalindrome(chars, i, j)
        }
    }
    
    return String(chars[bestStart..<(bestStart + longestString)])
}
}
