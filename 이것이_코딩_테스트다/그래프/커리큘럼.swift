/*
  동빈이는 온라인으로 컴퓨터공학 강의를 듣고 있다. 이때 각 온라인 강의는 선수 강의가 있을 수 있는데, 선수 강의가 있는 강의는 선수 강의를 들어야만 해단 강의를 들을 수 있다.
  동빈이는 총 N개의 강의를 듣고자 한다. 모든 강의는 1번부터 N번까지의 번호를 가진다. 또한 동시에 여러 개의 강의를 들을 수 있다고 가정한다.
  동빈이가 듣고자 하는 N개의 강의 정보가 주어졌을 때, N개의 강의에 대하여 수강하기까지 걸리는 최소 시간을 각각 출력하는 프로그램을 작성하시오.
  입력은 강의의 수 N과, 각 강의의 강의 시간과 그 강의를 듣기 위해 먼저 들어야 하는 강의들의 번호가 주어지며, 각 줄은 -1로 끝난다.
*/

//큐 구현
public struct Queue<T> {
  fileprivate var array = [T]()

  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var count: Int {
    return array.count
  }

  public mutating func enqueue(_ element: T) {
    array.append(element)
  }
  
  public mutating func dequeue() -> T? {
    if isEmpty {
      return nil
    } else {
      return array.removeFirst()
    }
  }
  
  public var front: T? {
    return array.first
  }
}
let n = Int(readLine()!)!
//모든 노드에 대한 진입차수 0으로 초기화
var indegree: [Int] = Array(repeating: 0, count: n+1)
//각 노드에 연결된 간선 정보를 담기위한 그래프
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: n+1)
//각 강의 시간
var time: [Int] = Array(repeating: 0, count: n+1)

//방향 그래프의 보든 간선 정보 입력받기
for i in 1...n{
    var data = readLine()!.split(separator: " ").map{Int(String($0))!}
    time[i] = data[0]
    for x in 1..<data.count-1{
        indegree[i] += 1
        graph[data[x]].append(i)
    }
}

//위산 정렬 함수
func topology_sort(){
    var result = time
    var q = Queue<Int>()
    
    //처음 시작할 때 진입차수가 0인 노드를 큐에 삽입
    for i in 1...n{
        if indegree[i] == 0{
            q.enqueue(i)
        }
    }
    
    //큐가 빌 때까지 반복
    while !q.isEmpty{
        var now = q.dequeue()!
        
        //해단 원소와 연결된 노드들의 집입차수에서 1 빼기
        for i in graph[now]{
            result[i] = max(result[i], result[now]+time[i])
            indegree[i] -= 1
            if indegree[i] == 0{
                q.enqueue(i)
            }
        }
    }
    for i in 1...n{
        print(result[i])
    }
}
topology_sort()
