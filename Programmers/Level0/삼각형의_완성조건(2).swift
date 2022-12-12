import Foundation

func solution(_ sides:[Int]) -> Int {
    var first = max(sides[0], sides[1])
    var second = min(sides[0], sides[1])
    var answer = 0
    
    answer += ((first - second+1)...first).count
    answer += ((first+1)..<(first+second)).count

    
    return answer
}
