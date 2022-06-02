/*
  하나의 수열에는 다양한 수가 존재한다. 이러한 수는 크기에 상관없이 나열되어 있다.
  이 수를 큰 수부터 작은 수의 순서로 정렬해야 한다. 수열을 내림차순으로 정렬하는 프로그램을 작성하시오.
*/

var n = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<n{
    arr.append(Int(readLine()!)!)
}

print(arr.sorted(by: >))
