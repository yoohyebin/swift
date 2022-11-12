import Foundation

//Solution 1
func solution(_ n:Int) -> Int {
    var answer = 0
    for i in stride(from: 2 , through: n, by: 2){
        answer += i
    }
    return answer
}

//Solution 2
func solution(_ n:Int) -> Int {
    return (0...n).filter { $0 % 2 == 0 }.reduce(0, +)
}


 
