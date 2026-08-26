
    class Solution {
    func countSubstrings(_ s: String) -> Int {
        var arr = Array(s)
        var count = 0
        let n = arr.count

        var grid = Array(
            repeating: Array(repeating: false, count: n),
            count: n
        )
        if s.isEmpty { return 0}

        for i in stride(from: n - 1, through: 0, by: -1) {
            for j in i..<n {

                if arr[i] == arr[j] {
                    if j - i <= 1 {
                        grid[i][j] = true
                    } else {
                        grid[i][j] = grid[i + 1][j - 1]
                    }
                }

                if grid[i][j] {
                    count += 1
                }
            }
        }

        return count
    }
}

