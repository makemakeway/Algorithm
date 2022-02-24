import Foundation

let array = [1, 5, 2, 6, 3, 7, 4]
let commands = [[2, 5, 3]]

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    
    commands.forEach { command in
        let i = command[0]
        let j = command[1]
        let k = command[2]
        
        var targetArray: [Int] = array[i-1...j-1].sorted()
        var target = targetArray[k-1]
        
        result.append(target)
    }
    
    
    return result
}

solution(array, commands)
