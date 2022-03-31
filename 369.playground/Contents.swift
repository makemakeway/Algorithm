import Foundation

/*
 
 369
 인물 이름
 무한정 369
 이름, 결과
 
 1, 2, 3, 4, 5 .... 이런식
 그때마다 사람이 바뀌어야함
 
 
 */


var names: [String] = ["연배", "노식", "창훈", "현석"]

func game(names: [String]) {
    var end: Bool = false
    var i: Int = 0
    
    while end == false {
        let current: String = names[i % 4]
        
        if isThreeSixNine(num: i + 1) {
            print("\(current)가 박수칩니다. 짝")
        } else {
            print("\(current)가 숫자를 말했습니다. \(i + 1)")
        }
        
        i += 1
        
        if i == 100 {
            end = true
        }
    }
}

func isThreeSixNine(num: Int) -> Bool {
    
    let stringNum = String(num)
    
    if stringNum.contains("3") || stringNum.contains("6") || stringNum.contains("9") {
        return true
    }
    
    return false
}

game(names: names)
