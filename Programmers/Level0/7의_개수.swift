import Foundation

//Solution1
func solution(_ array:[Int]) -> Int {
    var answer = 0
    
    for a in array{
        if a == 7{
            answer += 1
            continue
        }
        
        var num = a
        while num > 0{
            if num%10 == 7{
                answer += 1
            }
            num /= 10
        }
    }
    return answer
}

//Solution2
func solution(_ array:[Int]) -> Int {
  return array.map{String($0)}.joined().filter{$0 == "7"}.count
}
