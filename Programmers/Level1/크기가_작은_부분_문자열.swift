import Foundation

//Solution 1
func solution(_ t:String, _ p:String) -> Int {
    var cnt = 0
    let n = Int(p)!
  
    for i in 0...t.count - p.count{
        cnt += Int(t.map{String($0)}[i..<i+p.count].joined())! <= n ? 1 : 0
    }
    return cnt
}

//Solution 2
func solution(_ t:String, _ p:String) -> Int {
    let n = p.count, p_num = Int(p)!
    var result = 0
    
    for i in 0...t.count-n{
        let s = t.dropFirst(i).prefix(n)
        if p_num >= Int(s)!{result += 1}
    }
    return result
}
