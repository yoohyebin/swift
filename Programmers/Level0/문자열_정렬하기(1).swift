import Foundation

//Solution 1
func solution(_ my_string:String) -> [Int] {
    var answer = [Int]()
    for s in my_string{
    if s.isNumber{
        answer.append(Int(String(s))!)
    }
}
    return answer.sorted()
}

//Solution 2
func solution(_ my_string:String) -> [Int] {
    return my_string.filter{$0.isNumber}.map{Int(String($0))!}.sorted(by: <)
}
