var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var N = input[0], M = input[1]
var map = Array(repeating: Array(repeating: false, count: N+1), count: N+1)

for _ in 0..<M{
    input = readLine()!.split(separator: " ").map{Int(String($0))!}
    map[input[0]][input[1]] = true
    map[input[1]][input[0]] = true
}

var check = Array(repeating: false, count: N+1)
var cnt = 0

func dfs(_ now: Int){
    check[now] = true
    
    for i in  1...N{
        if map[now][i] && !check[i]{
            dfs(i)
        }
    }
}

for i in 1...N{
    if !check[i]{
        cnt += 1
        dfs(i)
    }
}

print("\(cnt)")
