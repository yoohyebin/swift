import Foundation

//Solution 1
func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var ans = 0

    let mod = score.count % m
    let score = score.sorted(by: >)[0..<score.count - mod]
    
    for i in stride(from: 0, to: score.count, by: m) {
        ans += Array(score[i..<i+m]).min()! * m
    }
    
    return ans
}

//Solution 2
func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var answer = 0
    var score = score.sorted(by: <)
    var start = m-1
    while start < score.count {        
        answer += m*score[start]        
        start += m
    }

    return answer
}
