let inputdata = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = inputdata[0], m = inputdata[1], v = inputdata[2]
var visited: [Bool] = Array(repeating: false, count: n+1)
var matrix: [[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)

for i in 0..<m {
    let nums = readLine()!.split(separator: " ").map{ Int(String($0))! }
    matrix[nums[0]][nums[1]] = 1
    matrix[nums[1]][nums[0]] = 1
}

func dfs(_ v: Int){
    visited[v] = true
    print(v, terminator: " ")
    for i in 1..<n+1{
        if visited[i] == false && matrix[v][i] == 1{
            dfs(i)
        }
    }
}

func bfs(_ v: Int){
    var queue: [Int] = [v]
    visited[v] = true
    
    while !queue.isEmpty{
        var newV = queue.removeFirst()
        print(newV, terminator: " ")
        
        for i in 1...n{
            if visited[i] == false && matrix[newV][i] == 1{
                queue.append(i)
                visited[i] = true
            }
        }
    }
}

dfs(v)
print("")
visited = Array(repeating: false, count: n+1)
bfs(v)
