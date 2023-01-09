import Foundation

func solution(_ quiz:[String]) -> [String] {
    var answer = [String]()
    for q in quiz{
        var s = q.split(separator: " ").map{String($0)}
        
        if s[1] == "+" {
            answer.append(Int(s[0])!+Int(s[2])! == Int(s[4])! ? "O" : "X")
        }else{
            answer.append(Int(s[0])!-Int(s[2])! == Int(s[4])! ? "O" : "X")
        }
    }
    return answer
}
