class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        
        if s1.count > s2.count {
            return false
        }

        let s2 = Array(s2)

        var s1Dict: [Character: Int] = [:]

        for char in s1 {
            s1Dict[char, default: 0] += 1
        }

        var left = 0
        var right = 0
        var s2Dict: [Character: Int] = [:]

        while right < s2.count {

            while right - left < s1.count && right < s2.count {
                let checkChar = s2[right]
                s2Dict[checkChar, default: 0] += 1
                right += 1
            }

            if s2Dict == s1Dict {
                return true
            }

            let outgoing = s2[left]

            s2Dict[outgoing, default: 0] -= 1

            if s2Dict[outgoing] == 0 {
                s2Dict.removeValue(forKey: outgoing)
            }

            left += 1
        }

        return false
    }
}