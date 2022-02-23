import Foundation

let id_list: [String] = ["muzi", "frodo", "apeach", "neo"]
let report: [String] = ["muzi frodo", "apeach frodo", "frodo neo", "muzi neo", "apeach muzi"]
var reportDictionary: [String:Set<String>] = [:]
var idDictionary: [String:Int] = [:]

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    report.forEach {
        let split = $0.split(separator: " ")
        let reporter = String(split[0])
        let reported = String(split[1])
        addReportDictionary(reporter: reporter, reported: reported)
    }
    
    id_list.enumerated().forEach {
        idDictionary[$0.element] = $0.offset
    }
    
    var result: [Int] = Array(repeating: 0, count: id_list.count)
    
    reportDictionary.forEach {
        if $0.value.count >= k {
            $0.value.forEach {
                result[idDictionary[$0]!] += 1
            }
        }
    }
    return result
}

func addReportDictionary(reporter: String, reported: String) {
    if reportDictionary[reported] == nil {
        reportDictionary[reported] = [reporter]
    } else {
        reportDictionary[reported]!.insert(reporter)
    }
}


solution(id_list, report, 3)


