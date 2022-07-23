public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var dic = [Int: Int]()
    var re = -1

    for (index, n) in A.enumerated(){
        if dic[n] == nil{
            dic[n] = index
        }else{
            dic[n] = min(dic[n]!, index)
        }
    }

    for i in 1...X{
        if dic[i] == nil{
            return -1
        }
        re = max(re, dic[i]!)
    }

    return re
}
