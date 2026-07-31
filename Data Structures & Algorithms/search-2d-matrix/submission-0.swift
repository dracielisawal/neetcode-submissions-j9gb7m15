class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let rows = matrix.count
        let cols = rows == 0 ? 0 : matrix[0].count

        var left = 0
        var right = rows * cols - 1

        while left <= right {
            let mid = left + (right - left) / 2

            let row = mid / cols
            let col = mid % cols

            if matrix[row][col] == target {
                return true
            } else if matrix[row][col] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        return false
    }
}