/*
  a와 b의 내적을 구하는 프로그램을 작성하시오.
  a와 b의 내적은 a[0]*b[0] + a[1]*b[1] + ... + a[n-1]*b[n-1] 입니다.
*/

import Foundation

//Solution 1
func solution(_ a:[Int], _ b:[Int]) -> Int {
    var sum = 0
    for i in 0..<a.count{
        sum += (a[i] * b[i])
    }
    return sum
}

//Solution2
func solution(_ a:[Int], _ b:[Int]) -> Int {
  return zip(a, b).map(*).reduce(0, +)
}
