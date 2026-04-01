class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var currMaxArea: Int = 0
        var left = 0
        var right = heights.count - 1
        while(left < right){
            let area = min(heights[left],(heights[right])) * (right - left)
            if(currMaxArea < area){
                currMaxArea = area
            }
                
            if heights[left] < heights[right] {
                left += 1
            }
            else{
                right -= 1
            }
            
        }
    
    return currMaxArea
}
}
