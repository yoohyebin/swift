import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var answer = 0
    for num in i...j{
        if String(num).contains(String(k)) {
            answer += String(num).filter{String($0) == String(k)}.count
        }
    }
    return answer
}
