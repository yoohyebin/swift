public func solution(_ A : inout [Int]) -> Int {
    if A.count < 2 {return 0}

    var minValue = A[0]
    var re = 0

    for a in A{
        let price = a - minValue
        minValue = min(a, minValue)
        re = max(price, re)
    }
    return re < 0 ? 0 : re
}
