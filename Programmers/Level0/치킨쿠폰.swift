import Foundation

func solution(_ chicken:Int) -> Int {
    var chicken = chicken
    var answer = 0
    
    while chicken >= 10 {
        answer += chicken/10
        chicken = chicken%10 + chicken/10
    }
    return answer
}
