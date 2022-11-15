import Foundation

//Solution 1
func solution(_ n:Int) -> Int {
    if n < 4 {return 0}
    
    var answer = 0
    for i in 4...n{
        for j in 2..<i{
            if i%j == 0 {
                answer += 1
                break
            }
        }
    }
    
    return answer
}

//Solution 2
func solution(_ n:Int) -> Int {
  return (1...n).filter { i in (1...i).filter { i % $0 == 0 }.count > 2 }.count
}
