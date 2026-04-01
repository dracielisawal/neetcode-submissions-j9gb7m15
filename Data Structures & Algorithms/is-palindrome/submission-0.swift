class Solution {
     func isPalindrome(_ s: String) -> Bool {
       
        let lowercasedString = s.lowercased().replacingOccurrences(of: " ", with: "").filter { $0.isLetter || $0.isNumber }
        print(lowercasedString)
        let reversedString = String(lowercasedString.replacingOccurrences(of: " ", with: "")).reversed()
        let finalString = String(reversedString).filter { $0.isLetter || $0.isNumber }
        print(finalString)
        return lowercasedString == String(reversedString)

        }
}
