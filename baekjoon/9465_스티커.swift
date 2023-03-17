let T = Int(readLine()!)!

for _ in 0..<T{
    let n = Int(readLine()!)!
    var arr = Array(repeating: Array(repeating: 0, count: n+1), count: 2)
    var dp = Array(repeating: Array(repeating: 0, count: n+1), count: 2)
    
    arr[0] = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr[1] = readLine()!.split(separator: " ").map{Int(String($0))!}
    
    dp[0][1] = arr[0][0]
    dp[1][1] = arr[1][0]
    
    for i in stride(from: 2, through: n, by: +1){
        dp[0][i] = max(dp[1][i-1], dp[1][i-2]) + arr[0][i-1]
        dp[1][i] = max(dp[0][i-1], dp[0][i-2]) + arr[1][i-1]
    }
    print("\(max(dp[0][n], dp[1][n]))")
}
