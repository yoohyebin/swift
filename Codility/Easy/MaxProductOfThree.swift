public func solution(_ A : inout [Int]) -> Int {
    var sortedA = A.sorted(by: >)

    return max(sortedA[0]*sortedA[1]*sortedA[2], sortedA[0]*sortedA[A.count-1]*sortedA[A.count-2])
}
