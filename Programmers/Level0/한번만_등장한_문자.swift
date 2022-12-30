import Foundation

//Solution 1
func solution(_ s:String) -> String {
    var alphabet = [String: Int]()
    
    for i in s.map{String($0)}{
        alphabet[i ,default: 0] += 1
    }
    
    return alphabet.filter{$0.value == 1}.keys.sorted(by: <).joined()
}

//Solution 2

func solution(_ s: String) -> String {
    return Dictionary(grouping: Array(s).map(String.init), by: { $0 }).filter { $0.value.count <= 1 }
        .map { $0.key }
        .sorted(by: <)
        .joined()
}
