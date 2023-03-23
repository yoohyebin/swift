/*
  인체에 치명적인 바이러스를 연구하던 연구소에서 바이러스가 유출되었다. 다행히 바이러스는 아직 퍼지지 않았고, 바이러스의 확산을 막기 위해서 연구소에 벽을 세우려고 한다.
  연구소는 크기가 N×M인 직사각형으로 나타낼 수 있으며, 직사각형은 1×1 크기의 정사각형으로 나누어져 있다. 연구소는 빈 칸, 벽으로 이루어져 있으며, 벽은 칸 하나를 가득 차지한다. 
  일부 칸은 바이러스가 존재하며, 이 바이러스는 상하좌우로 인접한 빈 칸으로 모두 퍼져나갈 수 있다. 새로 세울 수 있는 벽의 개수는 3개이며, 꼭 3개를 세워야 한다.

  연구소의 지도가 주어졌을 때 얻을 수 있는 안전 영역 크기의 최댓값을 구하는 프로그램을 작성하시오.
*/

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
var arr = [[Int]]()
var re = 0

let dx = [-1, 1, 0, 0]
let dy = [0, 0, 1, -1]

for _ in 0..<n{
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

func dfs(_ depth: Int){
    if depth == 3{
        bfs()
        return
    }
    for i in 0..<n{
        for j in 0..<m{
            if arr[i][j] == 0{
                arr[i][j] = 1
                dfs(depth + 1)
                arr[i][j] = 0
            }
        }
    }
    
}

func bfs(){
    var visited = Array(repeating: Array(repeating: false, count: 9), count: 9)
    var temp = arr
    var queue = [Int]()
    for i in 0..<n{
        for j in 0..<m{
            if temp[i][j] == 2 {
                queue.append(i * 10 + j)
            }
        }
    }
    while !queue.isEmpty{
        let pop = queue.removeFirst()
        let x = pop / 10
        let y = pop % 10
        for i in 0..<4{
            let nx = x + dx[i]
            let ny = y + dy[i]
            if nx >= 0 && nx < n && ny >= 0 && ny < m{
                if temp[nx][ny] == 0 && !visited[nx][ny]{
                    visited[nx][ny] = true
                    temp[nx][ny] = 2
                    queue.append(nx * 10 + ny)
                }
                
            }
        }
    }
    var count = 0
    for i in 0..<n{
        for j in 0..<m{
            if temp[i][j] == 0{
                count += 1
            }
        }
    }
    re = max(re, count)
}

dfs(0)
print(re)
