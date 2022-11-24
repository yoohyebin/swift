import Foundation

func solution(_ s:String) -> Int {
    var s = s.split(separator: " ").map{String($0)}
    
    while s.contains("Z"){
        var index = s.firstIndex(of: "Z")!
        if index - 1 >= 0 {
            s.remove(at: index)
            s.remove(at: index - 1)
        }else{
            s.remove(at: index)
        }
    }

    return s.map{Int($0)!}.reduce(0, +)
}
