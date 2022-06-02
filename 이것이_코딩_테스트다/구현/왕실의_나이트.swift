/*
  행복 왕국의 왕실 정원은 체스판과 같은  8 x 8 좌표 평면이다. 왕실 정원의 특정한 한 칸에는 나이트가 서있다.
  나이트는 L자 형태로만 이동할 수 있으며, 정원 밖으로는 나갈 수 없다. 나이트는 다음과 같은 2가지 경우로 이동할 수 있다.

  1. 수평으로 두 칸 이동한 뒤에 수직으로 한 칸 이동하기
  2. 수직으로 두 칸 이동할 뒤에 수평으로 한 칸 이동하기

  나이트의 처음 위치를 입력받아 나이트가 이동할 수 있는 경우의 수를 계산하는 프로그램을 작성하시오.
*/

var input = readLine()!.map{String($0)}
var row = Int(input[1])!
var column = Int(exactly: Character(input[0]).asciiValue!)! - Int(Character("a").asciiValue!) + 1

let steps = [[-2, -1], [-1 , -2], [1 , -2], [2, -1], [2 , 1], [1, 2], [-1, -2], [-2, 1]]

var re = 0
var next_row = 0
var next_column = 0

for step in steps{
     next_row = row + step[0]
    next_column = column + step[1]
    
    if next_row >= 1 && next_row <= 8 && next_column >= 1 && next_column <= 8{
        re += 1
    }
}

print(re)
