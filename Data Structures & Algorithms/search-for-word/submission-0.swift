class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var board = board
        let carray = Array(word)

        func dfs(_ i: Int, _ j: Int, _ index: Int) -> Bool {
            // Out of bounds
            if i < 0 || i >= board.count ||
               j < 0 || j >= board[0].count {
                return false
            }

            // Wrong character or already visited
            if board[i][j] != carray[index] {
                return false
            }

            // Found the entire word
            if index == carray.count - 1 {
                return true
            }

            // Mark as visited
            let original = board[i][j]
            board[i][j] = "#"

            let found =
                dfs(i + 1, j, index + 1) ||
                dfs(i - 1, j, index + 1) ||
                dfs(i, j + 1, index + 1) ||
                dfs(i, j - 1, index + 1)

            // Backtrack
            board[i][j] = original

            return found
        }

        // Try every cell as the starting point
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                if board[i][j] == carray[0] {
                    if dfs(i, j, 0) {
                        return true
                    }
                }
            }
        }

        return false
    }
}