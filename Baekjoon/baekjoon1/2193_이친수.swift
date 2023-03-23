let N = Int(readLine()!)!
var dp: [Int64] = Array(repeating: 0, count: 91)
dp[1] = 1
dp[2] = 1

for i in stride(from: 3, through: N, by: 1){
    dp[i] = dp[i-1] + dp[i-2]
}
print(dp[N])

