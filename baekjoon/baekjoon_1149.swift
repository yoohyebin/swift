/*
  RGB거리에는 집이 N개 있다. 거리는 선분으로 나타낼 수 있고, 1번 집부터 N번 집이 순서대로 있다.
  집은 빨강, 초록, 파랑 중 하나의 색으로 칠해야 한다. 각각의 집을 빨강, 초록, 파랑으로 칠하는 비용이 주어졌을 때, 아래 규칙을 만족하면서 모든 집을 칠하는 비용의 최솟값을 구해보자.

    - 1번 집의 색은 2번 집의 색과 같지 않아야 한다.
    - N번 집의 색은 N-1번 집의 색과 같지 않아야 한다.
    - i(2 ≤ i ≤ N-1)번 집의 색은 i-1번, i+1번 집의 색과 같지 않아야 한다.
*/

var n = Int(readLine()!)!
var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: n)
var dp = Array(repeating: Array(repeating: 0, count: 3), count: n)

for i in 0..<n{
    arr[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}
dp[0][0] = arr[0][0]
dp[0][1] = arr[0][1]
dp[0][2] = arr[0][2]

for i in 1..<n{
    dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + arr[i][0]
    dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + arr[i][1]
    dp[i][2] = min(dp[i-1][0], dp[i-1][1]) + arr[i][2]
}
print(dp[n-1].min()!)
