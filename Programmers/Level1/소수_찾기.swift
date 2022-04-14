/*
  1부터 입력받은 숫자 n 사이에 있는 소수의 개수를 반환하는 함수, solution을 만들어 보세요.

  Solution 1
    에라토스테네스의 체
  Solution 2
    어떤 수 n을 2부터 루트(n)까지 나눈 나머지가 모두 0이 아님을 확인
*/

import Foundation

//Solution 1
func solution(_ n:Int) -> Int {
    var count = 0
    var arr = Array(repeating: false, count: n + 1)

    for i in 2...n{
        if arr[i] == false{
            count += 1
            for j in stride(from: i, to: n + 1, by: i){
                arr[j] = true
            }
        }
    }
  return count
}

//Solution 2
func solution(_ n:Int) -> Int {
  var isPrime = true
  var count = 0

  for i in 2...n {
    isPrime = true

    for j in 2...Int((sqrt(Double(n))))+1 {
      if i != j && i % j == 0 {
        isPrime = false
        break
      }
    }

    count = isPrime ? count + 1 : count
  }

  return count
}
