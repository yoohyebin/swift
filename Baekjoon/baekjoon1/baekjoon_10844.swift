let N = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 10), count: N+1)

for i in 1..<10{
    dp[1][i] = 1
}

if N>=2{
    for n in 2...N{
        for j in 0..<10{
            if j == 0{
                dp[n][j] = (dp[n-1][1])%1000000000
            }
            else if j == 9{
                dp[n][j] = (dp[n-1][8])%1000000000
            }
            else{
                dp[n][j] = (dp[n-1][j-1] + dp[n-1][j+1])%1000000000
            }
        }
    }
}

print(dp[N].reduce(0, +)%1000000000)
