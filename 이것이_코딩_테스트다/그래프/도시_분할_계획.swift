/*
  동물원에서 막 탈출한 원숭이 한 마리가 세상을 구경하고 있다.
  어느 날 원숭이는 '평화로운 마을'에 잠시 머물렀는데, 마침 마을 사람들은 도로 공사 문제로 회의 중이었다.
  마을은 N개의 집과 그 집들을 연결하는 M개의 길로 이루어져 있다. 길은 어느 방향으로든지 다닐 수 있는 길이다.
  그리고 길마다 유지하는데 드는 유지비가 있다.

  마을의 이장은 마을을 2개의 분리된 마을로 분할할 계획을 세우고 있다. 마을이 너무 커서 혼자서는 관리할 수 없기 때문이다.
  마을을 분할할 때는 각 분리된 마을 안에 집들이 서로 연결되도록 분할해야 한다. 마을에는 집이 하나 이상 있어야 한다.

  일단 분리된 두 마을 사이에 있는 길들은 필요에 따라 없앨 수 있다. 
  그리고 각 분리된 마을 안에서도 임의의 두 집 사이에 경로가 항상 존재하게 하면서 길을 없앨 수 있다. 
  마을의 이장은 위 조건을 만족하도록 길들을 없애고 나머지 길의 유지비의 합으로 최소로 하고 싶다. 이것을 구하는 프로그램을 작성하시오.
*/

//특정 원소가 속한 집합을 찾기
func find_parent(_ parent: [Int], _ x: Int) -> Int{
    var parent = parent
    if parent[x] != x{
        parent[x] = find_parent(parent, parent[x])
    }
    return parent[x]
}
//두 원소가 속한 집합을 합치기
func union_parent(_ parent: [Int], _ a: Int, _ b: Int) -> [Int]{
    var new_a = find_parent(parent, a)
    var new_b = find_parent(parent, b)
    var new_parent = parent
    
    if new_a<new_b{
        new_parent[new_b] = new_a
    }else{
        new_parent[new_a] = new_b
    }
    return new_parent
}

var input_data = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input_data[0], m = input_data[1]

var parent: [Int] = Array(repeating: 0, count: n+1)
for i in 0...n{
    parent[i] = i
}
//모든 간선을 담을 배열
var edges = [[Int]]()
//최종 비용을 담을 변수, 최소 신장 트리에 포함되는 간선 중 비용이 가장 큰 간선
var re: Int = 0, last = 0

for i in 0..<m{
    input_data = readLine()!.split(separator: " ").map{Int(String($0))!}
    var a = input_data[0], b = input_data[1], cost = input_data[2]
    edges.append([cost,a,b])
}

//
edges = edges.sorted{ $0[0] < $1[0] }

for edge in edges {
    var cost = edge[0], a = edge[1], b = edge[2]
    
    if find_parent(parent, a) != find_parent(parent, b){
        parent = union_parent(parent, a, b)
        re += cost
        last = cost
    }
}

print(re-last)
