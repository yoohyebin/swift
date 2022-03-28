/*
  주어진 숫자 중 3개의 수를 더했을 때 소수가 되는 경우의 개수를 구하는 프로그램을 작성하시오.
*/

import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    var sum = 0
    var cnt = 0
    for i in 0..<nums.count{
        for j in i+1..<nums.count{
            for k in j+1..<nums.count{
                cnt = 0
                sum = nums[i]+nums[j]+nums[k]
                for c in 2..<sum{
                    if sum % c == 0{
                        break
                    }
                    cnt += 1
                }
                if cnt == (sum-2){
                    answer += 1
                }
            }
        }
    }
    return answer
}
