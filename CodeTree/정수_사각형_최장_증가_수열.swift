let n = Int(readLine()!)!
var arr = [[Int]]()
var dp = Array(repeating: Array(repeating: 1, count: n), count: n)
var cells = [(x: Int, y: Int)](), result = 0
let dx = [-1, 1, 0, 0], dy = [0 ,0 ,-1, 1]

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

for i in 0..<n {
    for j in 0..<n {
        cells.append((i, j))
    }
}

cells.sort {
    arr[$0.0][$0.1] < arr[$1.0][$1.1]
}

for (x, y) in cells {
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx >= 0 && nx < n && ny >= 0 && ny < n && arr[nx][ny] > arr[x][y] {
            dp[nx][ny] = max(dp[nx][ny], dp[x][y]+1)
        }
    }
}

for i in 0..<n {
    result = max(result, dp[i].max()!)
}

print(result)
