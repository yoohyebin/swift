let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
let n: Int = input[0]
let m: Int = input[1]
var map: [[Int]] = [Array(repeating: 0, count: m+1)]
for _ in 0..<n {
    map.append([0] + readLine()!.split(separator: " ").map{Int($0)!})
}


var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: m+1), count: n+1)

for i in 1...n {
    for j in 1...m {
        dp[i][j] = max(dp[i-1][j], dp[i][j-1]) + map[i][j]
    }
}

print(dp[n][m])
