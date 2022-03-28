/*
  수포자는 수학을 포기한 사람의 준말입니다. 수포자 삼인방은 모의고사에 수학 문제를 전부 찍으려 합니다. 수포자는 1번 문제부터 마지막 문제까지 다음과 같이 찍습니다.

    1번 수포자가 찍는 방식: 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, ...
    2번 수포자가 찍는 방식: 2, 1, 2, 3, 2, 4, 2, 5, 2, 1, 2, 3, 2, 4, 2, 5, ...
    3번 수포자가 찍는 방식: 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, ...

  정답이 순서대로 들은 배열 answers가 주어졌을 때, 가장 많은 문제를 맞힌 사람이 누구인지 배열에 담아 return 하는 프로그램을 작성하시오.
*/

import Foundation

//Solution1
func solution(_ answers:[Int]) -> [Int] {
    var s1 = [1,2,3,4,5]
    var s2 = [2,1,2,3,2,4,2,5]
    var s3 = [3,3,1,1,2,2,4,4,5,5]
    var score = [0,0,0]
    
    for i in 0..<answers.count{
        if(answers[i] == s1[i%5]){score[0]+=1}
        if(answers[i] == s2[i%8]){score[1]+=1}
        if(answers[i] == s3[i%10]){score[2]+=1}
    }
    var max = score.max()!
    var a = [Int]()
    
    if score[0] == max {a.append(1)}
    if score[1] == max {a.append(2)}
    if score[2] == max {a.append(3)}
    
    return a
}
//Solution2
func solution(_ answers:[Int]) -> [Int] {
    let answer = (
        a: [1, 2, 3, 4, 5], // index % 5
        b: [2, 1, 2, 3, 2, 4, 2, 5], // index % 8
        c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // index % 10
    )
    var point = [1:0, 2:0, 3:0]

    for (i, v) in answers.enumerated() {
        if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
        if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
        if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
    }

    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
}
