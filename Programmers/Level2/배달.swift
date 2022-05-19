/*
  N개의 마을로 이루어진 나라가 있습니다. 이 나라의 각 마을에는 1부터 N까지의 번호가 각각 하나씩 부여되어 있습니다. 
  각 마을은 양방향으로 통행할 수 있는 도로로 연결되어 있는데, 서로 다른 마을 간에 이동할 때는 이 도로를 지나야 합니다. 도로를 지날 때 걸리는 시간은 도로별로 다릅니다. 
  현재 1번 마을에 있는 음식점에서 각 마을로 음식 배달을 하려고 합니다

  마을의 개수 N, 각 마을을 연결하는 도로의 정보 road, 음식 배달이 가능한 시간 K가 매개변수로 주어질 때, 
  음식 주문을 받을 수 있는 마을의 개수를 return 하도록 solution 함수를 완성해주세요.
*/

import Foundation

//Solution 1 - 플로이드 워셜 알고리즘
func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var answer = 0
    var arr = [[Int]]()

    for i in 0..<N{
        arr.append(Array(repeating: 500001, count: N))
        arr[i][i] = 0
    }

    for i in 0..<road.count{
        if arr[road[i][0]-1][road[i][1]-1] > road[i][2]{
            arr[road[i][0]-1][road[i][1]-1] = road[i][2]
            arr[road[i][1]-1][road[i][0]-1] = road[i][2]
        }
    }

    for k in 0..<N{
        for i in 0..<N{
            for j in 0..<N{
                if (arr[i][k] + arr[k][j] < arr[i][j]){
                    arr[i][j] = arr[i][k] + arr[k][j]
                }
            }
        }
    }

    print(arr[0])
    return arr[0].filter(){$0 <= k}.count
}

//Solution 2 - 다익스트라 알고리즘
var INF = 2100000000

func dijkstra(_ node: Int, _ G: inout [[(Int, Int)]], _ D: inout [Int]) {
    var PQ = [(Int,Int)]()
    PQ.append((1,D[node]))

    while(!PQ.isEmpty) {
        PQ.sort { $0.1 > $1.1 }
        let nowNode = PQ.last!.0
        let nowDistance = PQ.last!.1
        PQ.removeLast()
        for i in G[nowNode].indices {
            let nextNode = G[nowNode][i].0
            let nextDistance = G[nowNode][i].1 + nowDistance
            if nextDistance < D[nextNode] {
                D[nextNode] = nextDistance
                PQ.append((nextNode, nextDistance))
            }
        }
    }
}

func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var answer = 0
    var G = [[(Int, Int)]](repeating: [], count: N+1)
    var distance = [Int](repeating: INF, count: N+1)
    distance[1] = 0

    for i in road.indices {
        G[road[i][0]].append((road[i][1],road[i][2]));
        G[road[i][1]].append((road[i][0],road[i][2]));
    }

    dijkstra(1, &G, &distance)
    for i in 1...N { 
        if distance[i] <= k { answer += 1 }
    }

    return answer
}
