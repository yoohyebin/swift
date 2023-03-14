import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var result = 0
    var max = 0
    
    for i in section{
        if i < max {
            continue
        }
        result += 1
        max = i+m
    }
    
    return result
}
