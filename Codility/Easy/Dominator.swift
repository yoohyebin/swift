// 88%, timeout Error
public func solution(_ A : inout [Int]) -> Int {
    var dic = [Int: [Int]]()
    

    for (index, n) in A.enumerated(){
        if dic[n] == nil {dic[n] = [index]}
        else{dic[n]!.append(index)}
    }
    
    for i in dic{
        if i.value.count > A.count/2{
            return i.value[0]
        }
    }
    
    return -1
}

//Solution 
public func solution(_ A : inout [Int]) -> Int {
    if A.count == 0 {return -1}
    var dic = [Int: Int]()
    var n = A.count/2

    for i in A{
        dic[i, default: 0] += 1
    }
    
    for i in dic{
        if i.value > n{
            return A.firstIndex(of: i.key)!
        }
    }
    
    return -1
}
