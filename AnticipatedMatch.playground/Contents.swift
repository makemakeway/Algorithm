import UIKit



func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var left = a
    var right = b
    var round = 0
    
    
    while left != right {
        round += 1
        
        if left % 2 == 1 {
            left = (left + 1) / 2
        } else {
            left /= 2
        }
        
        if right % 2 == 1{
            right = (right + 1) / 2
        } else {
            right /= 2
        }
        
    }
    

    return round
}

solution(8, 4, 7)
