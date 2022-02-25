import Foundation

let test1 = "aabbaccc"
let test2 = "abcabcabcabcdededededede"

func solution(_ s:String) -> Int {
    if s.count < 3 { return s.count }
    
    var minResult: Int = s.count
    
    (1...(s.count / 2)).forEach { cnt in
        let slicedString = sliceString(text: s, length: cnt)
        print(slicedString)
        let compressedString = compressString(text: slicedString)
        print(compressedString)
        let length = compressedString.count
        if length < minResult { minResult = length }
    }
    
    return minResult
}

func sliceString(text: String, length: Int) -> [String] {
    var result: [String] = []
    var temp = ""
    
    text.forEach { char in
        temp += String(char)
        if temp.count >= length {
            result.append(temp)
            temp = ""
        }
    }
    
    if !(temp.isEmpty) { result.append(temp) }
    return result
}

func compressString(text: [String]) -> String {
    var count = 1
    var temp = ""
    var result = ""
    
    
    for char in text {
        if char == temp {
            count += 1
        } else {
            if !(temp.isEmpty) {
                result += (count > 1) ? "\(count)\(temp)" : "\(temp)"
            }
            temp = char
            count = 1
        }
    }
    
    if !(temp.isEmpty) { result += (count > 1) ? "\(count)\(temp)" : "\(temp)" }
    
    return result
}



solution(test1)
