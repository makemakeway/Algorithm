import UIKit

/*
 
 Given a binary array nums, return the maximum number of consecutive 1's in the array.
 
 */

class Solution {
    var cnt: Int = 0
    var tmp: [Int] = []
    
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        if !(checkContainsOne(nums)) {
            return 0
        }
        for num in nums {
            if num == 1 {
                tmp.append(num)
            } else {
                updateCount()
                tmp.removeAll()
            }
        }
        
        if !(tmp.isEmpty) {
            updateCount()
        }
        
        return cnt
    }
    
    func updateCount() {
        if cnt < tmp.count {
            cnt = tmp.count
        }
    }
    
    func checkContainsOne(_ nums: [Int]) -> Bool {
        if nums.contains(1) {
            return true
        }
        return false
    }
    
}
