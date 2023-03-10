import Foundation

func solution(_ topping:[Int]) -> Int {
    if topping.count == 1 && Set(topping).count % 2 == 1{
        return 0
    }
    var result = 0
    var s1 = Set<Int>()
    var s2: Set<Int> = Set(topping)
    var t_cnt = Array(repeating: 0, count: topping.max()!+1)
    
    for t in topping{
        t_cnt[t] += 1
    }
    
    for i in 0..<topping.count-1{
        s1.insert(topping[i])
        t_cnt[topping[i]] -= 1
        if t_cnt[topping[i]] == 0{
            s2.remove(topping[i])
        }
        
        if s1.count == s2.count{
            result += 1
        }
    }
    
    return result
}
