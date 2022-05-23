/*
  정수들의 절댓값을 차례대로 담은 정수 배열 absolutes와 이 정수들의 부호를 차례대로 담은 불리언 배열 signs가 매개변수로 주어집니다. 
  실제 정수들의 합을 구하여 return 하도록 solution 함수를 완성해주세요.
*/

import Foundation

//Solution 1
func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var a = 0
    
    for i in 0..<absolutes.count{
        if signs[i]{
            a += absolutes[i]
        }
        else{
            a -= absolutes[i]
        }
    }
    
    return a
}

//Solution 2
func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return (0..<absolutes.count).map { signs[$0] ? absolutes[$0] : -absolutes[$0] }.reduce(0, +)
}
