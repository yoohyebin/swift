import Foundation

//Solution 1
func solution(_ my_string:String) -> Int {
    var answer = 0 
    for s in my_string{
        if s.isNumber{
            answer += Int(String(s))!
        }
    }
    return answer
}

//Solution 2
func solution(_ my_string:String) -> Int {
     return my_string.compactMap{Int(String($0))}.reduce(0,+)
}
