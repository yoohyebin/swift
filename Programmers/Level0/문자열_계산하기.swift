import Foundation

//Solution 1
func solution(_ my_string:String) -> Int {
    var string_value = my_string.split(separator: " ").map{String($0)}
    var answer = Int(string_value[0])!
    
    for index in stride(from: 1, to: string_value.count, by: 2) {
        if string_value[index] == "+"{
            answer += Int(string_value[index+1])!
        }else{
            answer -= Int(string_value[index+1])!
        }
    }
    return answer
}

//Solution 2
func solution(_ myString: String) -> Int {
    return myString.replacingOccurrences(of: "- ", with: "-")
        .replacingOccurrences(of: "+", with: "")
        .trimmingCharacters(in: .whitespacesAndNewlines)
        .split(separator: " ")
        .map { Int($0)! }
        .reduce(0, +)
}
