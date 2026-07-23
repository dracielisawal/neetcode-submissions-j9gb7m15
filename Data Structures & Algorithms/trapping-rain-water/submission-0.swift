class Solution {
    func trap(_ height: [Int]) -> Int {

        var l = 0
        var r = height.count - 1

        var lMax = 0
        var rMax = 0

        var trapped = 0

        while l < r {

            lMax = max(lMax, height[l])
            rMax = max(rMax, height[r])

            if lMax <= rMax {
                trapped += lMax - height[l]
                l += 1
            } else {
                trapped += rMax - height[r]
                r -= 1
            }
        }

        return trapped
    }
}