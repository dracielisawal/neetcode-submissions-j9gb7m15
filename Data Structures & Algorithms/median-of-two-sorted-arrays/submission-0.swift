class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {

        // Always binary search on the smaller array
        if nums1.count > nums2.count {
            return findMedianSortedArrays(nums2, nums1)
        }

        let m = nums1.count
        let n = nums2.count

        var low = 0
        var high = m

        let leftSize = (m + n + 1) / 2

        while low <= high {

            let partitionA = (low + high) / 2
            let partitionB = leftSize - partitionA

            let Aleft = partitionA == 0 ? Int.min : nums1[partitionA - 1]
            let Aright = partitionA == m ? Int.max : nums1[partitionA]

            let Bleft = partitionB == 0 ? Int.min : nums2[partitionB - 1]
            let Bright = partitionB == n ? Int.max : nums2[partitionB]

            // Correct partition found
            if Aleft <= Bright && Bleft <= Aright {

                // Odd total length
                if (m + n) % 2 == 1 {
                    return Double(max(Aleft, Bleft))
                }

                // Even total length
                return Double(max(Aleft, Bleft) + min(Aright, Bright)) / 2.0

            }
            // Move partitionA to the left
            else if Aleft > Bright {
                high = partitionA - 1
            }
            // Move partitionA to the right
            else {
                low = partitionA + 1
            }
        }

        return 0.0
    }
}