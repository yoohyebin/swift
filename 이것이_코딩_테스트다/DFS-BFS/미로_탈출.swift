/*
  동빈이는 N x M 크기의 직사각형 형태의 미로에 갇혀 있다. 미로에는 괴물들이 있어 이를 피해 탈출해야 한다.
  동빈이는 (1,1)에, 출구는 (N, M)에 존재하며, 한 번에 한 칸씩 이동할 수 있다. 괴물이 있는 부분은 0, 없는 부분은 1로 표시된다.
  미로는 반드시 탈출할 수 있는 형태로 제시될 때, 탈출하기 위해 움직여야 하는 최소 칸의 개수를 구하시오.
*/

//swift는 큐를 제공하지 않아 직접 구현
struct Queue<T> {
    private var queue: [T] = []
    
    public var count: Int {
        return queue.count
    }
    
    public var isEmpty: Bool {
        return queue.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        return isEmpty ? nil : queue.removeFirst()
    }
}


var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0], m = input[1]

var graph = [[Int]]()

for i in 0..<n{
    graph.append(readLine()!.map{Int(String($0))!})
}

var dx = [-1, 1, 0, 0]
var dy = [0, 0, -1, 1]

func bfs(_ x: Int, _ y: Int) -> Int{
    var queue = Queue<(Int,Int)>()
    queue.enqueue((x,y))
    
    while !queue.isEmpty{
        var (x,y) = queue.dequeue()!
        
        for i in 0..<4{
            var nx = x + dx[i]
            var ny = y + dy[i]
            
            if nx < 0 || ny < 0 || nx >= n || ny >= m{ continue }
            if graph[nx][ny] == 0{continue}
            if graph[nx][ny] == 1 {
                graph[nx][ny] = graph[x][y] + 1
                queue.enqueue((nx,ny))
            }
        }
        
    }
    return graph[n-1][m-1]
}
print(bfs(0, 0))
