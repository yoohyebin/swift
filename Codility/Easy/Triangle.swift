public func solution(_ A : inout [Int]) -> Int {
    if A.count < 3{ return 0 }
    A.sort()

    for i in 0..<A.count-2{
        if A[i+0]+A[i+1] > A[i+2]{ return 1 }
    }
    return 0
}
