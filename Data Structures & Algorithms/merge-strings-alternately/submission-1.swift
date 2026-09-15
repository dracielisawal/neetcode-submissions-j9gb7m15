class Solution 
{
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var p1 = 0
    var p2 = 0
    
    let s1 = Array(word1)
    let s2 = Array(word2)
    
    var result = ""
    
    while p1 < s1.count && p2 < s2.count {
        result.append(s1[p1])
        result.append(s2[p2])
        
        p1 += 1
        p2 += 1
    }
    
    if p1 < s1.count {
        result.append(contentsOf: s1[p1..<s1.count])
    }
    
    if p2 < s2.count {
        result.append(contentsOf: s2[p2..<s2.count])
    }
    
    return result
}
}