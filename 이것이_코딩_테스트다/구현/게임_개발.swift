/*
  현민이는 게임 캐릭터가 맵 안에서 움직이는 시스템을 개발 중이다. 캐릭터가 있는 장소는 1x1 크기의 정사각형으로 이루어진 NxM 크기의 직사각형으로, 각 칸은 육지 또는 바다이다. 캐릭터는 동서남북 중 한 곳을 바라본다.

  맵의 각 칸은 (a, b)로 나타낼 수 있고, a는 북쪽으로부터 떨어진 칸의 개수, b는 서쪽으로부터 떨어진 칸의 개수이다.
  캐릭터는 상하좌우로 움직일 수 있고, 바다로 되어있는 공간은 갈 수 없다. 캐릭터 움직임 매뉴얼을 다음과 같다.

  1. 현재 위치에서 형재 방향을 기준으로 왼쪽 방향부터 차례대로 갈 곳을 정한다.
  2. 캐릭터의 바로 왼쪽 방향에 아직 가보지 않은 칸이 존재한다면, 왼쪽 방향으로 회전한 다음 왼쪽으로 한 칸 전진한다. 왼쪽 방향에 가보지 않은 칸이 없다면, 왼쪽 방향으로 회전만 수행 후 1단계로 돌아간다.
  3. 만약 네 방향 모두 이미 가봤거나 바다라면, 바라보는 방향을 유지한 채로 한 칸 뒤로 가고 1단계로 돌아간다.
      3-1 뒤쪽 방향이 바다인 칸이라 뒤로 갈 수 없는 경우에는 움직임을 멈춘다.

  매뉴얼에 따라 캐릭터를 이동시킨 뒤, 캐릭터가 방문한 칸의 수를 출력하는 프로그램을 만드시오.
*/

var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0]
var m = input[1]

//방문한 위치를 저장하기 위한 맵을 생성
var d: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)

input = readLine()!.split(separator: " ").map{Int(String($0))!}
var x = input[0]
var y = input[1]
var direction = input[2]

//전체 맴 정보 입력받기
var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: n)
for i in 0..<n{
    arr[i].append(contentsOf: readLine()!.split(separator: " ").map{Int(String($0))!})
}


var dx = [-1, 0, 1, 0]
var dy = [0, 1, 0, -1]

//왼쪽으로 회전
func turn_left(){
    direction -= 1
    if direction == -1{
        direction = 3
    }
}

//시뮬레이션 시작
var count = 0
var turn_time = 0
var nx: Int = 0
var ny: Int = 0

while true{
    turn_left()
    nx = x + dx[direction]
    ny = y + dy[direction]
    
    //회전한 이후 정면에 가보지 않은 칸이 존재하는 경우 이동
    if d[nx][ny] == 0 && arr[nx][ny] == 0{
        d[nx][ny] = 1
        x = nx
        y = ny
        count += 1
        turn_time = 0
        continue
    }else{
        turn_time += 1
    }
    
    //네 방향 모두 갈 수 없는 경우
    if turn_time == 4{
        nx = x - dx[direction]
        ny = y - dy[direction]
        
        //뒤로 갈 수 있다면 이동
        if arr[nx][ny] == 0{
            x = nx
            y = ny
        }
        //뒤가 바다로 막혀있는 경우
        else{
            break
        }
        turn_time = 0
    }
}

print(count)

