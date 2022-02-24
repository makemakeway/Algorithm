import Foundation

let progresses = [95, 90, 99, 99, 80, 99]
let speeds = [1, 1, 1, 1, 1, 1]

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var currentProgresses = progresses
    var result: [Int] = []
    var currentTurn = 0
    
    zip(progresses, speeds).forEach { progress, speed in
        let day = Int(ceil(100 - Double(progress)) / Double(speed))
        print("current turn : \(currentTurn)")
        print("day : \(day)")
        print("result : \(result)")
        if day > currentTurn {
            currentTurn = day
            result.append(1)
        } else {
            result[result.count - 1] += 1
        }
    }
    
    
    
    return result
}

solution(progresses, speeds)
