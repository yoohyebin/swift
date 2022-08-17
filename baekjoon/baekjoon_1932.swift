let n = Int(readLine()!)!
var arr = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: n), count: n)

for _ in 0..<n{
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}

dp[0][0] = arr[0][0]

for i in 1..<n{
    for j in 0...i{
        if j == 0{
            dp[i][j] = arr[i][j] + dp[i-1][0]
        }else if j == i{
            dp[i][j] = arr[i][j] + dp[i-1][j-1]
        }else{
            dp[i][j] = max(dp[i-1][j-1]+arr[i][j], dp[i-1][j]+arr[i][j])
        }
    }
}
print(dp[n-1].max()!)
