import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var line: [[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
    var result = n
    
    func bfs(_ start: Int) -> Int{
        var cnt = 1
        var queue: [Int] = [start]
        var visited = Array(repeating: false, count: n+1)
        visited[start] = true
        
        while !queue.isEmpty{
            let first = queue.removeFirst()
            
            for i in 1...n{
                if line[first][i] == 1 && visited[i] == false{
                    queue.append(i)
                    visited[i] = true
                    cnt += 1
                }
            }
        }
            
        return abs(n-2*cnt)
    }
    
    for wire in wires {
        line[wire[0]][wire[1]] = 1
        line[wire[1]][wire[0]] = 1
    }

    for wire in wires {
        line[wire[0]][wire[1]] = 0
        line[wire[1]][wire[0]] = 0
        
        result = min(result, bfs(wire[0]))
        
        line[wire[0]][wire[1]] = 1
        line[wire[1]][wire[0]] = 1
    }
    
    return result
}
