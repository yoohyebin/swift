import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var arr = [Int]()
    var re = [Int]()
    for s in score{
        arr.append(s)
        arr = arr.sorted(by: >)
        
        if arr.count < k{
            re.append(arr.last!)
        }else{
            re.append(arr[k-1])
        }
    }
    return re
}
