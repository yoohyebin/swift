/*
  로또를 구매한 민우는 당첨 번호 발표일을 학수고대하고 있었습니다. 
  하지만, 민우의 동생이 로또에 낙서를 하여, 일부 번호를 알아볼 수 없게 되었습니다. 
  당첨 번호 발표 후, 민우는 자신이 구매했던 로또로 당첨이 가능했던 최고 순위와 최저 순위를 알아보고 싶어 졌습니다.
  
  알아볼 수 없는 0으로 표시할 때, 로또의 최고 순위와 최저 순위를 구하는 문제
*/

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var count = 0
    var z_count = 0
    for i in lottos{
        if i == 0{
            z_count += 1
        }
        else if win_nums.contains(i){
            count += 1
        }
    }

    return [7 - max(count + z_count, 1),7 - max(count, 1)]
}
