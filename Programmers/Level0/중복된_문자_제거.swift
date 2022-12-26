import Foundation

func solution(_ my_string:String) -> String {
    var answer = [String]()
    for s in my_string.map{String($0)}{
        if !answer.contains(s) {answer.append(s)}
    }
    return answer.joined()
}
