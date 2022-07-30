public func solution(_ A : inout [Int]) -> Int {
    if A.count == 1 {return A[0]}

    var sum = A[0]
    var max_sum = A[0]

    for i in 1..<A.count{
        sum = max(A[i], sum+A[i])
        max_sum = max(sum, max_sum)
    }
    return max_sum
}
