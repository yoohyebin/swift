/*
  자연수 n이 주어졌을 때, n의 다음 큰 숫자는 다음과 같이 정의 합니다.

    조건 1. n의 다음 큰 숫자는 n보다 큰 자연수 입니다.
    조건 2. n의 다음 큰 숫자와 n은 2진수로 변환했을 때 1의 갯수가 같습니다.
    조건 3. n의 다음 큰 숫자는 조건 1, 2를 만족하는 수 중 가장 작은 수 입니다.

  자연수 n이 매개변수로 주어질 때, n의 다음 큰 숫자를 return 하는 solution 함수를 완성해주세요.
*/

import Foundation

//Solution 1
func solution(_ n:Int) -> Int
{
    var answer: Int = n+1
    let n_one = String(n, radix: 2).map{$0}.filter{$0 == "1"}.count

    while true{
        let one = String(answer,radix: 2).map{$0}.filter{$0 == "1"}.count
        if n_one == one{
            break
        }
        answer += 1
    }

    return answer
}

//Solution 2
func solution(_ n:Int) -> Int {
    var answer : Int = n + 1

    while true {
        if n.nonzeroBitCount == answer.nonzeroBitCount {
            break;
        }
        answer += 1
    }

    return answer
}
