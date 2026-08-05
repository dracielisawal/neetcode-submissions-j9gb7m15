class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {

        var left = 1
        var right = piles.max()!

        func isPossible(_ speed: Int) -> Bool {
            var hours = 0

            for pile in piles {
                if pile % speed == 0 {
                    hours += pile / speed
                } else {
                    hours += pile / speed + 1
                }

                // Early exit
                if hours > h {
                    return false
                }
            }

            return true
        }

        while left <= right {
            let mid = left + (right - left) / 2

            if isPossible(mid) {
                // Try to find a smaller feasible speed
                right = mid - 1
            } else {
                // Need to eat faster
                left = mid + 1
            }
        }

        return left
    }
}