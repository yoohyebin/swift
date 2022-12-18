import Foundation

//Solution 1
func solution(_ score:[[Int]]) -> [Int] {
    var avg = [Int]()
    var answer = [Int]()
    for s in score{
        avg.append(s[0]+s[1])
    }
    
    for i in avg{
        answer.append(avg.filter{$0 > i}.count + 1)
    }
    
    return answer
}

//Solution 2
func solution(_ score: [[Int]]) -> [Int] {
    return score.map { Double($0.reduce(0, +)) / Double($0.count) }.map { score.map { Double($0.reduce(0, +)) / Double($0.count) }.sorted(by: >).firstIndex(of: $0)! + 1 }
}
