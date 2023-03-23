let T = Int(readLine()!)!
var dp = Array(repeating: 0, count: 1000000)
dp[1] = 1
dp[2] = 2
dp[3] = 4

for _ in 0..<T{
    let n = Int(readLine()!)!
    
    for i in stride(from: 4, through: n, by: +1){
        if dp[i] == 0{
            dp[i] = (dp[i-1] + dp[i-2] + dp[i-3]) % 1000000009
        }
    }
    print(dp[n] % 1000000009)
}
