public func solution(_ A : inout [Int]) -> Int {
    if A.max()! <= 0 {
        return 1
    }
    let setB = Set(1...A.count)

    if let re = setB.subtracting(A).min(){
        return re
    }else{
        return A.count+1
    }
}
