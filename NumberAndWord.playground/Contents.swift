import Foundation

var dict = [String:Int]()

func solution(_ s:String) -> Int {
    dictInit()
    
    var left = 0
    var right = 0
    var result = ""
    var word = ""
    
    for char in s {
        if char.isNumber {
            result += String(char)
        } else {
            word += String(char)
            if let num = dict[word] {
                result += "\(num)"
                word = ""
            }
        }
    }
    
    return Int(result) ?? 0
}

func dictInit() {
    dict["zero"] = 0
    dict["one"] = 1
    dict["two"] = 2
    dict["three"] = 3
    dict["four"] = 4
    dict["five"] = 5
    dict["six"] = 6
    dict["seven"] = 7
    dict["eight"] = 8
    dict["nine"] = 9
}


solution("1zeroone44")
