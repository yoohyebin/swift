import Foundation

//Solution 1
func solution(_ strlist:[String]) -> [Int] {
    var answer = [Int]()
    for str in strlist{
        answer.append(str.count)
    }
    return answer
}

//Solution 2
func solution(_ strlist:[String]) -> [Int] {
    return strlist.map({ $0.count })
}
