class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        
        var minString : String = ""
        var currString : String = ""
        var tmap = [Character: Int]()
        var sMap = [Character: Int]()
        var sArr = Array(s)
        
        var minCount = 0
        var formed = 0
        for char in t {
            tmap[char] = (tmap[char] ?? 0) + 1  //defined tmap
        }
        let required = tmap.count
        var left = 0, right = 0
        while(right < sArr.count) {
            sMap[sArr[right]] = (sMap[sArr[right]] ?? 0) + 1
            
            if let needed = tmap[sArr[right]],
               sMap[sArr[right]] == needed {
                print("this item \(sArr[right]) is of the same frequency in both ")
                formed += 1
                while(formed == required) {  //string is valid
                    currString = String(sArr[left...right])
                    let count = currString.count
                    if minString.isEmpty || count < minString.count {
                        minString = currString
                    }
                    let leftChar = sArr[left]
                    sMap[sArr[left]]! -= 1
                    left += 1

                    if let needed = tmap[leftChar],
                       sMap[leftChar, default: 0] < needed {
                        formed -= 1
                    }
                    
                    }
                }
                
            right += 1
            
            
        }
        return minString
    }
}
