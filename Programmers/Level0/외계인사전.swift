import Foundation

//Solution 1
func solution(_ spell:[String], _ dic:[String]) -> Int {
    for d in dic{
        var flag = false
        
        for s in spell{
            if d.contains(s){
                flag = true
            }else{
                flag = false
                break
            }
        }
        
        if flag && d.count == spell.count{
            return 1
        }
    }
    return 2
}

//Solution 2
func solution(_ spell: [String], _ dic: [String]) -> Int { 
  return dic.map { String($0.sorted()) }.contains(spell.sorted().joined()) ? 1 : 2 
}
