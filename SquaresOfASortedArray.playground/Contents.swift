import UIKit

/*
 
 Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
 
 */

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        let squaredNums = nums.map { pow(Double($0), 2) }
        let sortedNums = squaredNums.map { Int($0) }.sorted()
        
        return sortedNums
    }
}
