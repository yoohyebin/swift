//77% timeout Error
public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var re: [Int] = Array(repeating: 0, count: N)

    for i in A{
        if i == N+1{
            re = Array(repeating: re.max()!, count: N)
        }else{
            re[i-1] += 1
        }
    }
    return re
}

//Success
public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var counter: [Int] = Array(repeating: 0, count: N)
    var maxValue = 0, maxCounter = 0

    for i in A{
        if i == N+1{
            maxCounter = maxValue
        }else{
            if counter[i-1] < maxCounter{
                counter[i-1] = maxCounter
            }
            counter[i-1] += 1
            maxValue = max(counter[i-1], maxValue)
        }
    }
    for index in 0..<counter.count{
        if counter[index] < maxCounter {counter[index] = maxCounter}
    }

    return counter
}
