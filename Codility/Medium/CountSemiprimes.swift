public func solution(_ N : Int, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    if N < 4 {return Array(repeating:0, count: P.count)}
    var arr = Array(repeating: true, count: N+1)
    var primes = [Int]()
    var  re = [Int]()
    
    for i in 2..<N {
        if arr[i] == true {
            for j in stride(from: i, through: N, by: i) {
                    arr[j] = false
            }
            primes.append(i)
        }
    }
    
    var semiprime = Array(repeating: 0, count: N+1)
    for i in primes{
        for j in primes{
            if i*j > N {break}
            semiprime[i*j] = 1
        }
    }
    
    for i in 1..<semiprime.count{
        semiprime[i] += semiprime[i-1]
    }
    
    for i in 0..<P.count{
        re.append(semiprime[Q[i]] - semiprime[P[i]-1])
    }
    
    return re
}
