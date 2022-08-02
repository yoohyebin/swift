public func solution(_ A : inout [Int]) -> [Int] {
    var numCnt = Array(repeating: 0, count: (2*A.count)+1)
    var re = [Int]()
    
    for i in A{
        numCnt[i] += 1
    }
    
    for i in A{
        var divisors = 0
        for j in 1...Int(sqrt(Double(i))){
            if i % j == 0 {
                divisors += numCnt[j]
                
                if i/j != j{
                    divisors += numCnt[i/j]
                }
            }
        }
        re.append(A.count - divisors)
    }
    
    return re
}
