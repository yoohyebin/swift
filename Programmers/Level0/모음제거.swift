import Foundation

//Solution 1
func solution(_ my_string:String) -> String {
    var s: [String] = ["a", "e", "i", "o", "u"]
    var answer = ""

    for i in my_string.map{String($0)}{
        if !s.contains(i){
            answer += i
        }
    }
    return answer
}

//Solution 2
func solution(_ my_string:String) -> String {
    return my_string.components(separatedBy: ["a", "e", "i", "o", "u"]).joined()
}
