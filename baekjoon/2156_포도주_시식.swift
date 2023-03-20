/*
  ① 현재 포도주와 이전 포도주를 마시고 전전 포두주는 마시지 않는다. ( arr[i]+arr[i-1]+dp[i-3] )
  ② 현재 포도주와 전전 포도주를 마시고 이전 포도주는 마시지 않는다. ( arr[i]+dp[i-2] )
  ③ 현재 포도주를 마시지 않는다. ( dp[i-1] )
*/

let n = Int(readLine()!)!
var arr = [Int]()
var dp = Array(repeating: 0, count: n+1)

for _ in 0..<n{
    arr.append(Int(readLine()!)!)
}

dp[1] = arr[0]
if n >= 2{
    dp[2] = arr[0] + arr[1]
}

for i in stride(from: 3, through: n, by: +1){
    dp[i] = max(dp[i-2]+arr[i-1], dp[i-3]+arr[i-2]+arr[i-1])
    dp[i] = max(dp[i-1], dp[i])
}
print(dp[n])
