/*
  땅따먹기 게임을 하려고 합니다. 땅따먹기 게임의 땅(land)은 총 N행 4열로 이루어져 있고, 모든 칸에는 점수가 쓰여 있습니다. 
  1행부터 땅을 밟으며 한 행씩 내려올 때, 각 행의 4칸 중 한 칸만 밟으면서 내려와야 합니다. 
  단, 땅따먹기 게임에는 한 행씩 내려올 때, 같은 열을 연속해서 밟을 수 없는 특수 규칙이 있습니다.
*/

import Foundation

//Solution 1
func solution(_ land:[[Int]]) -> Int{
    var land = land

    for i in 0..<land.count-1{
        var temp = land[i]
        let max = temp.max()!
        let index = temp.firstIndex(of: max)!
        temp.remove(at: index)
        let secondMax = temp.max()!

        for j in 0..<4{
            if j != index{
                land[i+1][j] += max
            }else{
                land[i+1][j] += secondMax
            }
        }
    }

    return land.last!.max()!
}

//Solution 2
func solution(_ land:[[Int]]) -> Int{
    var new_land = land

    for i in 1..<new_land.count {
        new_land[i][0] += max(new_land[i-1][1], new_land[i-1][2], new_land[i-1][3])
        new_land[i][1] += max(new_land[i-1][0], new_land[i-1][2], new_land[i-1][3])
        new_land[i][2] += max(new_land[i-1][0], new_land[i-1][1], new_land[i-1][3])
        new_land[i][3] += max(new_land[i-1][0], new_land[i-1][1], new_land[i-1][2])
    }

    return new_land.last!.max()!
}
