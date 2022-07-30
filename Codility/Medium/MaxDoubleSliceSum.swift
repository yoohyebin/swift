public func solution(_ A : inout [Int]) -> Int {
    if A.count < 4 {return 0}

    var left_sum: [Int] = Array(repeating: 0,count: A.count)
    var right_sum: [Int] = Array(repeating: 0,count: A.count)
    var re = 0

    for i in 1..<A.count-1{
        left_sum[i] = max(left_sum[i-1]+A[i], 0)
    }
    for i in (2..<A.count).reversed(){
        right_sum[i-1] = max(right_sum[i]+A[i-1], 0)
    }
    for i in 1..<A.count-1{
        re = max(re, left_sum[i-1]+right_sum[i+1])
    }
    return re
}
