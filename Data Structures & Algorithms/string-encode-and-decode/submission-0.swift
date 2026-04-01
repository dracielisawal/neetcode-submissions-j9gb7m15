class Solution {
 func encode(_ strs: [String]) -> String {
            var finalString = ""
            for str in strs {
                finalString.append("\(str.count)#\(str)")
                print(finalString)
            }
            return finalString
        }

     func decode(_ s: String) -> [String] {
        var result: [String] = []
        var i = s.startIndex

        while i < s.endIndex {
            var j = i
            while s[j] != "#" {
                j = s.index(after: j)
            }
            let length = Int(s[i..<j])!

            let start = s.index(after: j)

            let end = s.index(start, offsetBy: length)

            let word = String(s[start..<end])
            result.append(word)

            i = end
        }

        return result
    }
}


