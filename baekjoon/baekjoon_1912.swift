let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: -1001, count: N)
dp[0] = arr[0]

for i in 1..<N{
    dp[i] = max(arr[i],dp[i - 1] + arr[i])
}
print(dp.max()!)
