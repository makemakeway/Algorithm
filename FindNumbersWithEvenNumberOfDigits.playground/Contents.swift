import UIKit


/*
 
 Given an array nums of integers,
 return how many of them contain an even number of digits.
 
 */

class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var answer = 0
        
        for num in nums {
            if checkDigits(num) {
                answer += 1
            }
        }
        
        return answer
    }
    
    func checkDigits(_ num: Int) -> Bool {
        let digits = String(num)
        
        if digits.count % 2 == 0 {
            return true
        }
        
        return false
    }
}
