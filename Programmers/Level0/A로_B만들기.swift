import Foundation

//Solution 1
func solution(_ before:String, _ after:String) -> Int {
    var before = before.map{String($0)}, after = after.map{String($0)}
    
    for b in before{
        if after.isEmpty || !after.contains(b) {return 0}
        else{
            after.remove(at: after.firstIndex(of: b)!)
        }
    }
    return 1
}

//Solution 2
func solution(_ before:String, _ after:String) -> Int {
    return before.sorted(by: <) == after.sorted(by: <) ? 1 : 0
}
