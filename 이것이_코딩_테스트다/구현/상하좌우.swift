/*
  여행가 A는 N x N 크기의 정사각형 공간 위에 서 있다. 이 공간은 1 x 1 크기의 정사각형으로 나누어져 있다. 가장 왼쪽 좌표는 (1,1)이며, 가장 오른쪽 좌표는 (N, N)에 해당한다.

  L: 왼쪽으로 한 칸 이동
  R: 오른쪽으로 한 칸 이동
  U: 위로 한 칸 이동
  D: 아래로 한 칸 이동

  각 문자의 의미가 위와 같을 때 L, R, U, D 문자들을 입력받아 A가 최종적으로 도착하는 좌표를 출력하는 프로그램을 작성하시오.
  (단, N x N 정사각형 공간을 벗어나는 움직임은 무시된다.)
*/

var n = Int(readLine()!)!
var plans = readLine()!.split(separator: " ").map{String($0)}

var x = 1, y = 1
var new_x = 0, new_y = 0

let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]
let move_type = ["L", "R", "U", "D"]

for plan in plans{
    for i in 0..<move_type.count{
        if plan == move_type[i]{
            new_x = x + dx[i]
            new_y = y + dy[i]
        }
        
        if new_x < 1 || new_y < 1 || new_x > n || new_y > n{
            continue
        }
        x = new_x
        y = new_y
    }
}

print("\(x) \(y)")
