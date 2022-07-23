public func solution(_ A : inout [Int]) -> Int {
    let setB = Set(1...A.count)
    return setB.subtracting(A).isEmpty ? 1 : 0
}
