import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var root: [Int] = [0]
    
    for number in numbers {
        var temp: [Int] = []
        
        for rootNum in root {
            temp.append(rootNum + number)
            temp.append(rootNum - number)
        }
        root = temp
    }
    var answer = root.filter { $0 == target }.count
    
    return answer
}

var numbers = [1, 1, 1, 1, 1]
var target = 3

solution(numbers, target)
