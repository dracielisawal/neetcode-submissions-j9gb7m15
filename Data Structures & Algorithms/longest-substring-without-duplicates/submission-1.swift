class Solution
{ 
   func lengthOfLongestSubstring(_ s: String) -> Int {
    var longest = 1
    var start = 0
    var right = 0
    var map: [Character: Int] = [:] // character : frequency
    var arr = Array(s)
    
    if(arr.count == 0){
        return 0
    }
    
    while(right < arr.count){
        let currChar = arr[right]
        map[currChar] = (map[currChar] ?? 0) + 1
        
        if(map[currChar] == 1) {
           
        }
        else
            {
                while(map[currChar]! > 1) {
                    let i = start
                    map[arr[i]]! -= 1
                    start = i + 1
            }
        }
        longest = max(longest, right - start + 1)
        right += 1
        
        
    }
    
    return longest
}
}