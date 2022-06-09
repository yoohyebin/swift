/*
  0과 1로 이루어진 2n x 2n 크기의 2차원 정수 배열 arr이 있습니다. 당신은 이 arr을 쿼드 트리와 같은 방식으로 압축하고자 합니다. 구체적인 방식은 다음과 같습니다.

    1. 당신이 압축하고자 하는 특정 영역을 S라고 정의합니다.
    2. 만약 S 내부에 있는 모든 수가 같은 값이라면, S를 해당 수 하나로 압축시킵니다.
    3. 그렇지 않다면, S를 정확히 4개의 균일한 정사각형 영역(입출력 예를 참고해주시기 바랍니다.)으로 쪼갠 뒤, 각 정사각형 영역에 대해 같은 방식의 압축을 시도합니다.

  arr이 매개변수로 주어집니다. 위와 같은 방식으로 arr을 압축했을 때, 배열에 최종적으로 남는 0의 개수와 1의 개수를 배열에 담아서 return 하도록 solution 함수를 완성해주세요.
*/

import Foundation

var zero_cnt = 0
var one_cnt = 0

func quadCompress(_ arr: [[Int]],_ row: Int, _ col: Int, _ n: Int){
    var num = arr[row][col]
    
    for i in row..<row+n{
        for j in col..<col+n{
            if num != arr[i][j]{
                quadCompress(arr, row, col, n/2)
                quadCompress(arr, row, col+(n/2), n/2)
                quadCompress(arr, row+(n/2), col, n/2)
                quadCompress(arr, row+(n/2), col+(n/2), n/2)
                
                return
            }
        }
    }
    num == 1 ? (one_cnt += 1) : (zero_cnt += 1)
}
func solution(_ arr:[[Int]]) -> [Int] {
    var n = arr[0].count
    quadCompress(arr, 0, 0, n)
    
    return [zero_cnt, one_cnt]
}
