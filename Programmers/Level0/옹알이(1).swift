import Foundation

func solution(_ babbling:[String]) -> Int {
    var baby = ["aya", "ye", "woo", "ma"]
    var answer = 0
    
    for b in babbling{
        var cnt = 0
        
        for i in baby{
            if b.contains(i){
                cnt += i.count
            }
        }
        if cnt == b.count {answer += 1}
    }
    return answer
}
