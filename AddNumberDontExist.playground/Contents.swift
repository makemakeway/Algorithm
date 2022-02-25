import Foundation

let numbers = [1,2,3,4,6,7,8,0]

func solution(_ numbers:[Int]) -> Int {
    var sum: Int = 0
    
    (0...9).forEach { num in
        if !(numbers.contains(num)) {
            sum += num
        }
    }
    
    return sum
}

solution(numbers)
