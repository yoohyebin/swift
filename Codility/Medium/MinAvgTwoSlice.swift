public func solution(_ A : inout [Int]) -> Int {
    var minAvg = Double(A[0] + A[1])/2.0
    var re = 0
    
    for i in 2..<A.count{
        var avg = Double(A[i-2] + A[i-1] + A[i])/3.0
        if minAvg > avg{
            minAvg = avg
            re = i-2
        }
        
        avg = Double(A[i-1] + A[i])/2.0
        if minAvg > avg{
            minAvg = avg
            re = i-1
        }
    }
    
    return re
}
