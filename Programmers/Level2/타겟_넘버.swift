/*
  n개의 음이 아닌 정수들이 있습니다. 이 정수들을 순서를 바꾸지 않고 적절히 더하거나 빼서 타겟 넘버를 만들려고 합니다.
  사용할 수 있는 숫자가 담긴 배열 numbers, 타겟 넘버 target이 매개변수로 주어질 때 숫자를 적절히 더하고 빼서 타겟 넘버를 만드는 방법의 수를 return 하도록 solution 함수를 작성해주세요.

  재귀함수를 이용한 DFS(깊이우선탐색)으로 진행 해야한다. 
*/

import Foundation

var targets = 0
var number = [Int]()
var cnt = 0

func dfs(_ index: Int, _ sum: Int){
    if index == number.count{
        if sum == targets{ cnt += 1 } //sum과 target의 계산값이 같다면 cnt +1
        return                        //배열의 마지막 수까지 계산한 경우 return
    }
    dfs(index+1, sum+number[index])
    dfs(index+1, sum-number[index])
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    number = numbers
    targets = target

    dfs(0,0)

    return cnt
}
