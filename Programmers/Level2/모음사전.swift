/*
  사전에 알파벳 모음 'A', 'E', 'I', 'O', 'U'만을 사용하여 만들 수 있는, 길이 5 이하의 모든 단어가 수록되어 있습니다. 
  사전에서 첫 번째 단어는 "A"이고, 그다음은 "AA"이며, 마지막 단어는 "UUUUU"입니다.
  단어 하나 word가 매개변수로 주어질 때, 이 단어가 사전에서 몇 번째 단어인지 return 하도록 solution 함수를 완성해주세요.

  인덱스별 카운트는 가장 끝 즉,4번째 인덱스일 경우 다음 모음으로 이동하는데 1개의 단어가 필요합니다.
    ex) AAAAA -> AAAAE -> AAAAI .... 1개씩
  3번째 인덱스의 경우 다음 모음으로 이동하는데 6개가 필요합니다.
    ex) AAAA -> AAAE -> AAAI ... 6개씩
  2번째 인덱스의 경우 다음 모음으로 이동하는데 31개가 필요합니다.
    ex) AAA -> AAE -> AAI 31개씩
*/

import Foundation

func solution(_ word:String) -> Int {
    let vowelsDic: [Character: Int] = ["A":0,"E":1,"I":2,"O":3,"U":4]
    let count = [781,156,31,6,1]
    var re: Int = 0

    for i in 0..<word.count{
        re += vowelsDic[ Array(word)[i]]! * count[i] + 1
    }
    return re
}
