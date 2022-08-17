let n = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 1, count: 10), count: n+1)


for i in stride(from: 2, through: n, by: +1){
    for j in 1...9{
        dp[i][j] = (dp[i-1][j] + dp[i][j-1]) % 10007
    }
}

print(dp[n].reduce(0, +)%10007)
