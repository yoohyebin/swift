import Foundation

//Solution 1
func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var dict = [String: Int]()
    var keymap = keymap.map{$0.map{String($0)}}
    var result = [Int]()
    
    for k in keymap{
        for i in k{
            if dict[i] == nil {
                dict[i] = k.firstIndex(of: i)!
            }else{
                dict[i] = min(dict[i]!, k.firstIndex(of: i)!)
            }
        }
    }
    
    for target in targets {
        var sum = 0
        for t in target.map{String($0)} {
            if dict[t] == nil {
                break
            }else{
                sum += dict[t]!+1
            }
        }
        result.append(sum == 0 ? -1 : sum)
    }
    
    return result
}

//Solution 2
func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var keymap = keymap.map{$0.map{String($0)}}
    var result = [Int]()
    var sum = 0

    for target in targets {
        sum = 0
        for t in target.map{String($0)} {
            var minValue = Int.max
            for k in keymap{
                guard let i = k.firstIndex(of: t) else {continue}
                minValue = min(minValue, i+1)
            }
            sum = minValue == Int.max ? 0 : sum+minValue
        }
        result.append(sum == 0 ? -1 : sum)
    }

    return result
}
