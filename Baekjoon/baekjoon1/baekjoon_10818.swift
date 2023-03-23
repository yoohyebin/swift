/*
  백준 10818 "최소, 최대"

  N개의 정수가 주어질때, 최솟값과 최댓값을 구하는 문제
*/

readLine()!
let array = readLine()!.split(separator: " ").map{Int(String($0))!}
print("\(array.min()!) \(array.max()!)")
