import Foundation

func solution(_ food:[Int]) -> String {
    var answer = ""
    
    for i in 1..<food.count{
        if food[i] != 1 {
            answer += String(repeating: String(i), count: Int(exactly: food[i])!/2)
        }
    }
    return answer + "0" + answer.reversed()
}
