import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var coke = n
    var answer = 0

    while coke >= a{
        answer += (coke/a)*b
        coke = (coke/a)*b + coke%a
    }

    return answer
}
