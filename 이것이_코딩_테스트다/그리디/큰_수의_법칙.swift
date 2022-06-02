/*
  동빈이의 큰 수의 법칙은 다양한 수로 이루어진 배열이 있을 때 주어진 수들을 M번 더하여 가장 큰 수를 만드는 법칙이다.
  단, 배열의 특정한 인덱스에 해당하는 수가 연속해서 k번 더해질 수 없는 것이 이 법칙의 특징이다.

  배열의 크기 N, 더해지는 횟수 M, 그리고 K가 주어질 때 동빈이의 큰 수의 법칙에 따른 결과를 출력하시오.
*/

var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var data = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0], m = input[1], k = input[2]
var re = 0
data.sort()

while m != 0 {
    for _ in 0..<k{
        if m == 0{ break}
        re += data[n-1]
        m -= 1
    }
    if m == 0{ break }
    re += data[n-2]
    m -= 1
}

print(re)
