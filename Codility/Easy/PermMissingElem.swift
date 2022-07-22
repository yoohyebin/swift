public func solution(_ A : inout [Int]) -> Int {
    let setA = Set(A)
    let setB = Set(1...(A.count+1))
    
    return setB.subtracting(setA).first!
}
