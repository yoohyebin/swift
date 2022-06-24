/*
  정수 X에 사용할 수 있는 연산은 다음과 같이 세 가지 이다.
    1. X가 3으로 나누어 떨어지면, 3으로 나눈다.
    2. X가 2로 나누어 떨어지면, 2로 나눈다.
    3. 1을 뺀다.
  
  정수 N이 주어졌을 때, 위와 같은 연산 세 개를 적절히 사용해서 1을 만들려고 한다. 연산을 사용하는 횟수의 최솟값을 출력하시오.
*/

//Solution 1
var n = Int(readLine()!)!
var dp = Array(repeating: 0, count: 1000001) //몇번 움직였는지의 결과를 저장하기위한 배열

if n == 1 {
    print("0")
}else {
    for i in 2...n { //i는 현재 최단경로를 구하고자하는 수
        dp[i] = dp[i - 1] + 1
        
        if i % 2 == 0 {
            dp[i] = dp[i] >= dp[i / 2] + 1 ? dp[i / 2] + 1 : dp[i]
        }
        if i % 3 == 0 {
            dp[i] = dp[i] >= dp[i / 3] + 1 ? dp[i / 3] + 1 : dp[i]
        }
        
    }
    print("\(dp[n])")
}

//Solution 2
func f(_ n:Int)->Int{
    return n<2 ?0:min(f(n/2)+n%2, f(n/3)+n%3)+1
}
print (f(Int(readLine()!)!))
