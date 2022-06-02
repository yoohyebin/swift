/*
  어떠한 수 N이 1이 될 때까지 다음의 두 과정 중 하나를 반복적으로 선택하여 수행하려고 한다.
  단, 두 번째 연산은 N이 K로 나누어 떨어질 때만 선택할 수 있다.

  1. N에서 1을 뺀다.
  2. N을 K로 나눈다.

  N과 K가 주어질 때, N이 1이 될 때까지 1번 혹은 2번 과정을 수행해야 하는 최소 횟수를 구하는 프로그램을 작성하시오.
*/

//Solution 1
/*
  최대한 많이 나누기 위해 N이 K로 나누어 떨어질 때까지 N을 1씩 감소시키고, N이 K로 나누어 떨어지면 N을 K로 나누는 연산을 반복
*/
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0], k = input[1]
var re = 0

while n>=k{
    while n%k != 0{
        n -= 1
        re += 1
    }
    n /= k
    re += 1
}
while n > 1{
    n -= 1
    re += 1
}

print(re)

//Solution 2
/*
  N이 K의 배수가 되도록 효율적으로 한 번에 빼는 방식
*/
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0], k = input[1]
var re = 0

while true{
    var target = n/k * k
    re += n-target
    n = target
    
    if n<k{ break }
    re += 1
    n /= k
}

re += (n-1)
print(re)
