public func solution(_ N : Int) -> Int {
    let binary = Array(String(N, radix: 2))
    var zero_cnt = 0, re = 0

    for i in 1..<binary.count{
        if binary[i] == "0"{
            zero_cnt += 1
        }else{
            re = max(re, zero_cnt)
            zero_cnt = 0
        }
    }
    return re
}
