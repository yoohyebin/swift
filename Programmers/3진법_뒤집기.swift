/*
  자연수 n이 매개변수로 주어집니다. 
  n을 3진법 상에서 앞뒤로 뒤집은 후, 이를 다시 10진법으로 표현한 수를 return 하도록 solution 함수를 완성해주세요.
*/

import Foundation

//Solution 1
func solution(_ n:Int) -> Int {
    var t = [Int]()
    var num = n
    var re = 0
    var d = 1

    while num > 0{
        t.append(num%3)
        num /= 3
    }

    for i in t.reversed(){
        re += i * d
        d *= 3
    }
    return re 
}

//Solution 2
func solution(_ n:Int) -> Int {
  let flipToThree = String(n,radix: 3)
  let answer = Int(String(flipToThree.reversed()),radix:3)!
  
  return answer
}
