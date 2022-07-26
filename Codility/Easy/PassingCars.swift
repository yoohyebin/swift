public func solution(_ A : inout [Int]) -> Int {
    var pCount = 0, sum = 0

    for a in A{
        if a == 0 {pCount += 1}
        else{sum += pCount}

        if sum > 1000000000 { return -1}
    }
    return sum
}
