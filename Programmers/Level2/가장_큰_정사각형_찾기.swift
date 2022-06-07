/*
  1와 0로 채워진 표(board)가 있습니다. 표 1칸은 1 x 1 의 정사각형으로 이루어져 있습니다. 
  표에서 1로 이루어진 가장 큰 정사각형을 찾아 넓이를 return 하는 solution 함수를 완성해 주세요. 
  (단, 정사각형이란 축에 평행한 정사각형을 말합니다.)

  동적프로그래밍(Dynamic Programing)을 사용해야 한다.
  (a, b)을 기준으로 좌측 상단, 상단, 좌측에 있는 값들 중 가장 작은 수를 (a, b)에 더해준다.
  단, 행이나 열이 하나인 경우는 계산이 되지 않기 때문에 이러한 경우는 따로 처리해 주어야 한다.
*/

import Foundation

func solution(_ board:[[Int]]) -> Int
{
    var check = board
    var max = 0

    for i in 1..<board.count{
        for j in 1..<board[0].count{
            if board[i][j] == 1{
                check[i][j] += min(check[i-1][j-1], check[i-1][j], check[i][j-1])
                max = max < check[i][j] ? check[i][j] : max
            }
        }
    }

    //행 또는 열이 1개인 경우
    if board.count == 1 || board[0].count == 1{
        for i in 0..<board.count {
            for j in 0..<board[0].count {
                if board[i][j] == 1 {
                    max = 1
                    break
                }
              }
        }
    }

    return max * max
}
