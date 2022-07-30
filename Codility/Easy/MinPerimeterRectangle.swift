public func solution(_ N : Int) -> Int {
   if N == 1 {return 4}

    var re = Int.max
    var n = 1
    var arr = [[Int]]()
    
    while n*n <= N{
        if N%n == 0 { arr.append([n, N/n])}
        n += 1
    }
    
    for a in arr{
        re = min(re, (a[0]+a[1])*2)
    }

    return re
}
