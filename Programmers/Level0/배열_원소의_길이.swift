import Foundation

func solution(_ strlist:[String]) -> [Int] {
    var answer = [Int]()
    for str in strlist{
        answer.append(str.count)
    }
    return answer
}
