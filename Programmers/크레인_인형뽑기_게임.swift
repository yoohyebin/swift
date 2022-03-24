/*
  게임 화면은 "1 x 1" 크기의 칸들로 이루어진 "N x N" 크기의 정사각 격자이며 위쪽에는 크레인이 있고 오른쪽에는 바구니가 있습니다.
  격자 칸에는 다양한 인형이 들어 있으며 인형이 없는 칸은 빈칸입니다. 모든 인형은 "1 x 1" 크기의 격자 한 칸을 차지하며 격자의 가장 아래 칸부터 차곡차곡 쌓여 있습니다. 
  게임 사용자는 크레인을 좌우로 움직여서 멈춘 위치에서 가장 위에 있는 인형을 집어 올릴 수 있습니다. 
  집어 올린 인형은 바구니에 쌓이게 되는 데, 이때 바구니의 가장 아래 칸부터 인형이 순서대로 쌓이게 됩니다. 
  만약 같은 모양의 인형 두 개가 바구니에 연속해서 쌓이게 되면 두 인형은 터뜨려지면서 바구니에서 사라지게 됩니다. 

  사라진 인형의 개수를 구하는 프로그램을 작성하시오.
*/

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var a = [Int]()
    var arr = board
    var n = 0

    for i in moves{
        for j in 0..<(arr.count){
            if arr[j][i-1] != 0{
                a.append(arr[j][i-1])
                arr[j][i-1] = 0
                break
            }
        }
        if a.count >= 2, a[a.count-1] == a[a.count-2]{
            n += 2
            a.remove(at: a.count-1)
            a.remove(at: a.count-1)
        }
    }

    return n
}
