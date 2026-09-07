class Solution {
   func longestCommonPrefix(_ strs: [String]) -> String {
    var prefix = strs[0]

    for i in 0..<strs.count {
        prefix = commonPrefix(prefix, strs[i])

        if prefix.isEmpty {
            return ""
        }
    }

    return prefix
}

func commonPrefix(_ a: String, _ b: String) -> String {
    let a = Array(a)
    let b = Array(b)

    let count = min(a.count, b.count)

    for i in 0..<count {
        if a[i] != b[i] {
            return String(a[0..<i])
        }
    }

    return String(a[0..<count])
}
}
