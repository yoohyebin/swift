public func solution(_ N : Int) -> Int {
    if N == 1 {return 1}
    var re = 0
    var n = 1
    
    while n*n <= N{
        if N%n == 0 {re += 2}
        n += 1
    }
    
    return (n-1)*(n-1) == N ? re-1 : re
}
