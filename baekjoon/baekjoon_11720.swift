/*
  백준 11720 "숫자의 합"
  
  공백 없이 쓰여진 N개의 숫자의 합을 구하는 
*/

_ = readLine()
var n = Array(readLine()!).map{Int(String($0))!}
print(n.reduce(0, {$0+$1}))
