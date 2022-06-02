/*
  동빈이는 두 개의 배열 A와 B를 가지고 있다. 두 배열은 N개의 원소로 구성되어 있으며, 원소는 모두 자연수이다.
  동빈이는 최대 K번의 바꿔치기 연산을 수행할 수 있는데,
  바꿔치기 연산이란 배열 A에 있는 원소 하나와 배열 B에 있는 원소 하나를 골라서 두 원소를 서로 바꾸는 것이다. 
  동빈이의 최종 목표는 배열 A의 모든 원소의 합이 최대가 되도록 하는 것이다.
*/

var inputdata = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = inputdata[0], k = inputdata[1]

var arr_A = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr_B = readLine()!.split(separator: " ").map{Int(String($0))!}

arr_A = arr_A.sorted()
arr_B = arr_B.sorted(by: >)

for i in 0..<k{
    if arr_A[i] < arr_B[i]{
        swap(&arr_A[i], &arr_B[i]) 
    }
    else {break}
}
print(arr_A.reduce(0, +))
