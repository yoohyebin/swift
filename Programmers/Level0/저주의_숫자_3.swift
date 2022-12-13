import Foundation

//Solution 1
func solution(_ n:Int) -> Int {
    var answer = 0
    for i in 1...n{
        answer += 1
        
        if answer/10 == 3 {
            answer += 10 - answer%10
        }else if answer/10 == 13{
            answer += 10 - answer%10
        }
        
        while answer % 3 == 0 || answer % 10 == 3{
            answer += 1
        }
        
        if answer/10 == 3 {
            answer += 10 - answer%10
        }else if answer/10 == 13{
            answer += 10 - answer%10
        }
    }
    return answer
}

//Solution 2
func solution(_ n:Int) -> Int {
    var answer = 0

    for i in 1...n {
        answer += 1

        while answer % 3 == 0 || String(answer).contains("3") {
            answer += 1
        }
    }

    return answer
}
