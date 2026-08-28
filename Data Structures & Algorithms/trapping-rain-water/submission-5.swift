class Solution {
    func trap(_ height: [Int]) -> Int {
        var count = height.count
        if count <= 2 { return 0}
         var left = 0 
        var right = height.count - 1
        var trappedWater = 0 
        var Lmax = height[left]
        var Rmax = height[right]
       
        
        while left < right { 
            
            if height[left] < height[right] {
                if height[left] <= Lmax
                {
                    trappedWater += Lmax - height[left]
                     left = left + 1
                }
                else 
                {
                    Lmax = height[left]
                    left = left + 1 
                }
              
            }
            else {
                 if height[right] <= Rmax
                {
                    trappedWater += Rmax - height[right]
                     right = right - 1
                }
                else 
                {
                    Rmax = height[right]
                    right = right - 1
                }
            }
        }
        return trappedWater
    }
}