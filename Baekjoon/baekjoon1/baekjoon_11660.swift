let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], m = input[1]

var arr = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
for i in 0..<n{
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
    for j in 0..<n{
        dp[i+1][j+1] = dp[i][j+1] + dp[i+1][j] - dp[i][j] + arr[i][j]
    }
}

for _ in 0..<m{
    let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}
    var x1 = input2[0], y1 = input2[1], x2 = input2[2], y2 = input2[3]
    
    print("\(dp[x2][y2] - dp[x2][y1-1] - dp[x1-1][y2] + dp[x1-1][y1-1])")
}
