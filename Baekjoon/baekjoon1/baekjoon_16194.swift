let n = Int(readLine()!)!
let card = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = [Int](repeating: 0, count: n+1)

for i in 0..<n{
    dp[i+1] = card[i]
}

for i in 2...n {
    for j in 1..<i {
        dp[i] = min(dp[i], dp[i-j] + dp[j])
    }
}
print(dp[n])
