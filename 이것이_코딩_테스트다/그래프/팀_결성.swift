/*
  학교에서 학생들에게 0번부터 N번까지의 번호를 부여했다.
  처음에는 모든 학생이 서로 다른 팀으로 구분되어, 총 N+1개의 팀이 존재한다.
  이때, 선생님은 '팀 합치기' 연산과 '같은 팀 여부 확인' 연산을 사용할 수 있다.

  1. '팀 합치기' 연산은 두 팀을 합치는 연산이다.
  2. '같은 팀 여부 확인' 연산은 특정한 두 학생이 같은 팀에 속하는지를 확인하는 연산이다.

  선생님이 M개의 연산을 수행할 수 있을 때, '같은 팀 여부 확인' 연산에 대한 결과를 출력하는 프로그램을 작성하시오.

  '팀 합치기' 연산은 0 a b형태로 주어지며, '같은 팀 여부 확인' 연산은 1 a b 형태로 주어진다.
*/

//특정 원소가 속한 집합 찾기
func find_parent(_ parent: [Int], _ x: Int) -> Int{
    var parent = parent
    if parent[x] != x{
        parent[x] = find_parent(parent, parent[x])
    }
    return parent[x]
}
//두 원소가 속한 집합 합치기
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

for i in 0..<m{
    input_data = readLine()!.split(separator: " ").map{Int(String($0))!}
    var oper = input_data[0], a = input_data[1], b = input_data[2]
    
    if oper == 0{
        parent = union_parent(parent, a, b)
    }
    else if oper == 1{
        find_parent(parent, a) == find_parent(parent, b) ? print("YES") : print("NO")
    }
}
