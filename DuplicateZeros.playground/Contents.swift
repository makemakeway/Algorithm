import UIKit

/*
 
 Given a fixed-length integer array arr, duplicate each occurrence of zero, shifting the remaining elements to the right.

 Note that elements beyond the length of the original array are not written. Do the above modifications to the input array in place and do not return anything.


 */

var arr = [0,1,7,6,0,2,0,7]

class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        let cnt = arr.count
        var insertCnt = 0
        
        arr.forEach { num in
            if num == 0 {
                arr.insert(0, at: insertCnt + 1)
                insertCnt += 1
            }
            
            insertCnt += 1
        }
        
        while arr.count != cnt {
            arr.popLast()
        }
    }
}


Solution().duplicateZeros(&arr)
