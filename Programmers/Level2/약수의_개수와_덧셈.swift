/*
  두 정수 left와 right가 매개변수로 주어집니다. 
  left부터 right까지의 모든 수들 중에서, 약수의 개수가 짝수인 수는 더하고, 약수의 개수가 홀수인 수는 뺀 수를 return 하도록 solution 함수를 완성해주세요.
*/

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var re = 0
    for i in left...right{
        var cnt = (1...i).map{$0}.filter{i%$0 == 0}.count
        cnt % 2 == 0 ? (re += i) : (re -= i)
    }
    return re
}
