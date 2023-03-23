let n = Int(readLine()!)!
var dp = Array(repeating: 1, count: n+1)
dp[1] = 3

for i in stride(from: 2, through: n, by: +1){
    dp[i] = (dp[i-1]*2 + dp[i-2]) % 9901
}

print(dp[n]%9901)
