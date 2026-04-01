class Solution {
     func characterReplacement(_ s: String, _ k: Int) -> Int {
        
        let arr = Array(s)
        var hashMap: [Character : Int] = [:]
        var maxFreq = 0
        var left = 0
        var result = 0
        for right in 0..<arr.count {
            let currChar = arr[right]
            hashMap[currChar] = (hashMap[currChar] ?? 0) + 1
            maxFreq = max(maxFreq, hashMap[currChar]!)
            
            if right - left + 1 - maxFreq > k { //characters to be replaced is more than operations allowed
                let toRemove = arr[left]
                hashMap[toRemove]! -= 1
                left += 1
            }
                    // ✅ track answer
            result = max(result, right - left + 1)
           
            
           
        }
        return result
        }
}
