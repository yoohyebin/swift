import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dict = [Int: Int]()
    
    for t in tangerine{
        dict[t, default: 0] += 1
    }
    
    let sortedTangerine = dict.values.sorted(by: >)
    var number = 0, answer = 0
    
    for t in sortedTangerine {
        answer += 1
        if number + t >= k { break }
        number += t
    }
    
    return answer
}
