import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var answer = [[Int]]()
    for i in stride(from: 0, to: num_list.count, by: n){
        answer.append(num_list[i..<i+n].map{Int($0)})
    }
    return answer
}
