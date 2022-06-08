/*
  방문 판매원 A는 많은 회사가 모여 있는 공중 미래 도시에 있다.
  공중 미래 도시에는 1번부터 N번 까지의 회사가 있는데 특정 회사끼리는 서로 도로를 통해 연결되어 있다.
  방문 판매원 A는 현재 1번 회사에 위치해 있으며 X번 회사에 방문해 물건을 판매하고자 한다.

  특정 회사에 도착하기 위한 방법은 회사끼리 연결되어 있는 도로를 이용하는 방법이 유일하다.
  또한 연결된 2개의 회사는 양방향으로 이동할 수 있으며, 특정 회사와 다른 회사가 도로로 연결되어 있다면, 정확히 1만큼의 시간으로 이동할 수 있다.

  또한 오늘 A는 소개팅에도 참석하고자 한다.
  소개팅 상대는 K번 회사에 존재하며, A는 X번 회사에 가기 전 소개팅 상대를 만나고자 한다.
  A가 회사 사이를 이동하게 되는 최소 시간을 계산하는 프로그램을 작성하시오.
*/

var input_data = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input_data[0], m = input_data[1]

var graph: [[Int]] = Array(repeating: Array(repeating: Int.max, count: n+1), count: n+1)

for i in 1..<n+1{
    for j in 1..<n+1{
        if i == j {
            graph[i][j] = 0
        }
    }
}

//자기 자신에서 자기 자신으로 가는 비용은 0으로 초기화
for _ in 0..<m{
    var ab = readLine()!.split(separator: " ").map{Int(String($0))!}
    graph[ab[0]][ab[1]] = 1
    graph[ab[1]][ab[0]] = 1
}

var xk = readLine()!.split(separator: " ").map{Int(String($0))!}
var x = xk[0], k = xk[1]

//플로이드 워셜 알고리즘 수행
for i in 1..<n+1{
    for a in 1..<n+1{
        for b in 1..<n+1{
            if graph[a][i] < Int.max && graph[i][b] < Int.max{
                graph[a][b] = min(graph[a][b], graph[a][i] + graph[i][b])
            }
        }
    }
}

if graph[1][k] < Int.max && graph[k][x] < Int.max{
    var distance = graph[1][k] + graph[k][x]
    print(distance)
}else{
    print("-1")
}
