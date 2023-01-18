import Foundation

//Solution 1
func solution(_ common:[Int]) -> Int {
    var n = common[1] - common[0]
    var sub = true
    
    for i in 1..<common.count-1{
        if common[i+1] - common[i] != n{
            sub = false
            break
        }
    }
    
    if sub == false{
        n = common[1]/common[0]
    }
    
    return sub ? common.last! + n : common.last! * n
}

//Solution 2
func solution(_ common:[Int]) -> Int {
    if common[0] - common[1] == common[1] - common [2] {
        return common.last! + common[1] - common[0]
    } else {
        return common.last! * common[1] / common[0]
    }
}
