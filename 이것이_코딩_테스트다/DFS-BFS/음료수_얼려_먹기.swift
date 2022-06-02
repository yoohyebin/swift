/*
  N x M 크기의 얼음 틀이 있다. 구멍이 뚫려 있는 부분은 0, 칸막이가 존재하는 부분은 1로 표시된다.
  구명이 뚫려 있는 부분끼리 상, 하, 좌, 우로 붙어 있는 경우 서로 연결되어 있는 것으로 간주한다.
  이때, 얼음 틀의 모양이 주어졌을 때 생성되는 총 아이스크림의 개수를 구하는 프로그램을 작성하시오.
*/
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0], m = input[1]

var graph = [[Int]]()

for i in 0..<n{
    graph.append(readLine()!.map{Int(String($0))!})
}

func dfs(_ x: Int, _ y: Int) -> Bool{
    if x <= -1 || x >= n || y <= -1 || y >= m {
        return false
    }
    
    if graph[x][y] == 0{
        graph[x][y] = 1
        
        dfs(x-1, y)
        dfs(x, y-1)
        dfs(x+1, y)
        dfs(x, y+1)
        return true
    }
    return false
}

var result = 0

for i in 0..<n{
    for j in 0..<m{
        if dfs(i,j) == true{
            result += 1
        }
    }
}

print(result)
