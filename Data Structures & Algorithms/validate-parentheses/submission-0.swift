class Solution {
     func isValid(_ s: String) -> Bool {
        let mainArr = Array(s)
        var stack : [Character] = []
        let paraMap : [Character: Character] =  [
            ")": "(",
            "}": "{",
            "]": "["
        ]
        for char in mainArr{
            if paraMap.keys.contains(char) {
                if stack.isEmpty {
                    return false
                }

                let top = stack.removeLast()
                       if top != paraMap[char] {
                           return false
                       }
            }
            
            else{
                stack.append(char)
                }
            }
            return stack.isEmpty
        }
}
