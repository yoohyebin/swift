import Foundation

func solution(_ n:Int) -> [Int] {
    var answer = [Int]()
    
    for i in stride(from: 1, through: n, by: 2) {answer.append(i)}
    return answer
}
