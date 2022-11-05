import Foundation

//Solution 1
func solution(_ emergency: [Int]) -> [Int] { 
  return emergency.map { emergency.sorted(by: >).firstIndex(of: $0)! + 1 } 
}

//Solution 2
func solution(_ emergency:[Int]) -> [Int] {
    var answer: [Int] = []

    for tmp in emergency {
        answer.append(emergency.filter { $0 > tmp }.count + 1)
    }

    return answer
}
