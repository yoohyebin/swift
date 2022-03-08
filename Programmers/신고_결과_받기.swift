import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var dic = [String: [String]]()
    var result = [Int](repeating: 0, count: id_list.count)
    
    for i in Set(report){
        let a = i.split(separator: " ").map{String($0)}
        dic[a[1]] = (dic[a[1]] ?? []) + [a[0]]
    }
    
   for i in dic{
        if i.value.count >= k{
            i.value.forEach{
                result[id_list.firstIndex(of: $0)!] += 1
            }
        }
    }
    return result
}
