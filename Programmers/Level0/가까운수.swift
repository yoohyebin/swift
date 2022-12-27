import Foundation

//Solution 1
func solution(_ array:[Int], _ n:Int) -> Int {
    var answer = 0, minValue = Int.max
    
    for num in array{
        var temp = abs(n-num)
        if temp < minValue{
            minValue = temp
            answer = num
        }else if temp == minValue{
            answer = min(num, answer)
        }
    }
    return answer
}

//Solution 2
func solution(_ array:[Int], _ n:Int) -> Int {
    return array.min(by: { (abs($0 - n), $0) < (abs($1 - n), $1) })!
}
