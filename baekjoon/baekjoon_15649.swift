let array = readLine()!.split(separator: " ").map{Int(String($0))!}
var visit = [Bool](repeating: false, count: array[0])
var arr = [Int](repeating: 0, count: array[1])

func dfs(N : Int, M: Int, depth: Int){
    if depth == M {
        print(arr.map{String($0)}.joined(separator: " "))
        return
    }
    
    for i in 0..<N{
        if visit[i] == false{
            visit[i] = true
            arr[depth] = i + 1
            dfs(N: N, M: M, depth: depth + 1)
            
            visit[i] = false
        }
    }
    return
}

dfs(N: array[0], M: array[1], depth: 0)
