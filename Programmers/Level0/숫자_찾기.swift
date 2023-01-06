import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let n = String(num).map{Int(String($0))!}
    return n.contains(k) ? n.firstIndex(of: k)! + 1 : -1
}
