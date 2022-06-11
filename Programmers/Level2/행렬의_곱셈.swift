/*
  2차원 행렬 arr1과 arr2를 입력받아, arr1에 arr2를 곱한 결과를 반환하는 함수, solution을 완성해주세요.
*/

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var re: [[Int]] = Array(repeating: [Int](), count: arr1.count)
    
    for i in 0..<arr1.count{
        for j in 0..<arr2[0].count{
            var value = 0
            for k in 0..<arr2.count{
                value += arr1[i][k] * arr2[k][j]
            }
            re[i].append(value)
        }
    }
    
    return re
}
