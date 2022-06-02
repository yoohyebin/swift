/*
  동빈이의 큰 수의 법칙은 다양한 수로 이루어진 배열이 있을 때 주어진 수들을 M번 더하여 가장 큰 수를 만드는 법칙이다.
  단, 배열의 특정한 인덱스에 해당하는 수가 연속해서 k번 더해질 수 없는 것이 이 법칙의 특징이다.

  배열의 크기 N, 더해지는 횟수 M, 그리고 K가 주어질 때 동빈이의 큰 수의 법칙에 따른 결과를 출력하시오.
*/

//Solution 1
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

//Solution 2
/*
  이 문제는 수열이 반복된다. 반복되는 수열의 길이는 (k+1)로, 반복되는 횟수는 m/(k+1)이다.
  반복되는 횟수 m/(k+1)에 k를 곱하면 가장 큰 수의 등장 횟수가 된다.
  이때, m이 (k+1)로 나누어 떨어지지 않는 경우를 고려해 m%(k+1) 연산을 하여 나머지 값을 구해야 한다.

  따라서 가장 큰 수가 더해지는 횟수는 다음과 같다.
  m/(k+1) * k  + m%(k+1)
*/
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var data = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0], m = input[1], k = input[2]

data.sort()

var cnt = (m/(k+1)*k) + (m%(k+1))
var re = cnt*data[n-1] + (m-cnt)*data[n-2]
print(re)
