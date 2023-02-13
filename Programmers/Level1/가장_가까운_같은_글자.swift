import Foundation

//Solution 1
func solution(_ s:String) -> [Int] {
    var dic = [String: Int]()
    var result = [Int]()
    let s = s.map{String($0)}
    
    for i in 0..<s.count{
        if dic[s[i]] == nil{
            result.append(-1)
        }else{
            result.append(i-dic[s[i]]!)
        }
        dic[s[i]] = i
    }
    
    return result
}

//Solution 2
func solution(_ s: String) -> [Int] {
    return s.enumerated().map { (i, c) in i - (Array(s)[0..<i].lastIndex(of: c) ?? i + 1) }
}
