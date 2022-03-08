/*
백준 1000 "A+B"

두 정수 A와 B를 입력받은 다음, A+B를 출력하는 문제
*/
//Solution 1
import Foundation
  
let line = readLine()!
let lineArr = line.components(separatedBy: " ")
print(Int(lineArr[0])! + Int(lineArr[1])!)

//Solution 2
import Foundation
  
let line = readLine()!
let intArr = line.components(separatedBy: " ").map{ Int($0)! }
print(intArr.reduce(0, +))

//Solution 3
print((readLine()?.split(separator: " ").map { Int($0)! }.reduce(0, +))!)
