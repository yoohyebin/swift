/*
  어떤 나라에는 N개의 도시가 있으며, 각 도시는 보내고자 하는 메시지가 있는 경우, 다를 도시로 전보를 보내서 다른 도시에 해당 메시지를 전송할 수 있다. 
  하지만 X 도시에서 Y도시로 전보를 보내고자 한다면, X에서 Y로 향하는 통로가 설치되어 있어야 한다.
  통로를 거쳐 메시지를 보낼 때는 일정 시간이 소요된다.

  어느날 C 도시에서 위급 상황이 발생했다. 그래서 최대한 많은 도시로 메시지를 보내고자 한다.
  메시지는 C에서 출발하여 각 도시 사이에  설치된 통로를 거쳐, 최대한 많이 퍼져나갈것이다.

  각 도시의 번호와 통로가 설치되어 있는 정보가 주어졌을 때, 
  도시 C에서 보낸 메시지를 받게되는 도시의 개수는 총 몇개 이며, 도시들이 모두 메시지를 받는데 까지 걸리는 시간은 얼마인지 계산하는 프로그램을 작성하시오.
*/

var input_data = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input_data[0], m = input_data[1], start = input_data[2]

var graph: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: 0), count: 0), count: n+1)
var distance: [Int] = Array(repeating: Int.max, count: n+1)

for _ in 0..<m{
    input_data = readLine()!.split(separator: " ").map{Int(String($0))!}
    var x = input_data[0], y = input_data[1], z = input_data[2]
    graph[x].append([y,z])
}

func dijkstra(_ start: Int){
    var queue: [[Int]] = [[start, 0]]
    distance[start] = 0
    
    while !queue.isEmpty{
        let first = queue.removeFirst()
        
        if distance[first[0]] < first[1]{
            continue
        }
        
        for i in graph[first[0]]{
            var cost = first[1] + i[1]
            if cost < distance[i[0]]{
                distance[i[0]] = cost
                queue.append([i[0],cost])
            }
        }
        
    }
}

dijkstra(start)

var count = 0, max_distance = 0

for d in distance {
    if d != Int.max{
        count += 1
        max_distance = max(max_distance, d)
    }
}

print(count-1, max_distance)
