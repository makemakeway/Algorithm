import UIKit

/*
 
 You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

 Merge nums1 and nums2 into a single array sorted in non-decreasing order.

 The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.
 
 */

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var nums1Last = m - 1
        var nums2Last = n - 1
        var last = m + n - 1
        
        while nums1Last >= 0 && nums2Last >= 0 {
            if nums1[nums1Last] > nums2[nums2Last] {
                nums1[last] = nums1[nums1Last]
                last -= 1
                nums1Last -= 1
            } else {
                nums1[last] = nums2[nums2Last]
                last -= 1
                nums2Last -= 1
            }
        }
        
        while nums2Last >= 0 {
            nums1[last] = nums2[nums2Last]
            last -= 1
            nums2Last -= 1
        }
        
    }
}
