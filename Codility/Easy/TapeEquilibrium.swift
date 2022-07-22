// 69% Time out
public func solution(_ A : inout [Int]) -> Int {
    if A.count == 2{
        return abs(A[0]-A[1])
    }
    var re = Int.max
    
    for P in (1..<A.count){
        let sum = abs(A[0...P-1].reduce(0, +) - A[P...A.count-1].reduce(0, +))
        re = min(sum, re)
    }
    return re
}

//100% Success
public func solution(_ A : inout [Int]) -> Int {
    if A.count == 2{
        return abs(A[0] - A[1])
    }
    
    var front = 0, back = A.reduce(0, +)
    var re = Int.max
    
    for (index, num) in A.enumerated() {
        front += num
        back -= num
        let diff = abs(front - back)
         
        if index == A.count - 1 {
            break
        } else {
            re = min(re, diff)
        }
    }
    return re
}
