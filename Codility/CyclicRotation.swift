public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    if K % A.count == 0{
        return A
    }
    for _ in 0..<K{
        let num = A.removeLast()
        A.insert(num, at: 0)
    }
    return A
}
