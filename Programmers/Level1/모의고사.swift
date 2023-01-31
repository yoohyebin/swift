/*
  수포자는 수학을 포기한 사람의 준말입니다. 수포자 삼인방은 모의고사에 수학 문제를 전부 찍으려 합니다. 수포자는 1번 문제부터 마지막 문제까지 다음과 같이 찍습니다.

    1번 수포자가 찍는 방식: 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, ...
    2번 수포자가 찍는 방식: 2, 1, 2, 3, 2, 4, 2, 5, 2, 1, 2, 3, 2, 4, 2, 5, ...
    3번 수포자가 찍는 방식: 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, ...

  정답이 순서대로 들은 배열 answers가 주어졌을 때, 가장 많은 문제를 맞힌 사람이 누구인지 배열에 담아 return 하는 프로그램을 작성하시오.
*/

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let s1 = [1,2,3,4,5]
    let s2 = [2,1,2,3,2,4,2,5]
    let s3 = [3,3,1,1,2,2,4,4,5,5]
    var score = [1:0, 2:0, 3:0]
    
    for i in 0..<answers.count{
        if(answers[i] == s1[i%5]){score[1]! += 1}
        if(answers[i] == s2[i%8]){score[2]! += 1}
        if(answers[i] == s3[i%10]){score[3]! += 1}
    }
    
    let max = score.values.max()
    return score.filter{$0.value == max}.keys.sorted(by: <)
}
