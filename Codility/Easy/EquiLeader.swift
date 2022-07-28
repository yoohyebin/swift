public func solution(_ A : inout [Int]) -> Int {
    var dic = [Int: Int]()
    var n = A.count/2
    var re = 0

    for i in A{
        dic[i, default: 0] += 1
    }
    
    var leader = dic.filter{$0.value > n}.first
    
    if let leader = leader{
        var left_count = 0
        var right_count = leader.value
        
        for i in 0..<A.count{
            if A[i] == leader.key{
                left_count += 1
                right_count -= 1
            }
            if (left_count > (i+1)/2) && (right_count > (A.count-i-1)/2){
                re += 1
            }O(N)
        }
    }else {return 0}
    
    return re
}
