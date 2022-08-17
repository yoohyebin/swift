let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], k = input[1]
var dp = Array(repeating: Array(repeating: 0, count: n+1), count: k+1)

for i in 0...k{
    dp[i][0] = 1
}

for i in 1...k{
    for j in 1...n{
        dp[i][j] = (dp[i-1][j] + dp[i][j-1]) % 1000000000
    }
}
print(dp[k][n])
