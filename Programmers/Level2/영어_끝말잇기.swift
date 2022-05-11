/*
  1부터 n까지 번호가 붙어있는 n명의 사람이 영어 끝말잇기를 하고 있습니다. 영어 끝말잇기는 다음과 같은 규칙으로 진행됩니다.

    1. 1번부터 번호 순서대로 한 사람씩 차례대로 단어를 말합니다.
    2. 마지막 사람이 단어를 말한 다음에는 다시 1번부터 시작합니다.
    3. 앞사람이 말한 단어의 마지막 문자로 시작하는 단어를 말해야 합니다.
    4. 이전에 등장했던 단어는 사용할 수 없습니다.
    5. 한 글자인 단어는 인정되지 않습니다.
  
  사람의 수 n과 사람들이 순서대로 말한 단어 words 가 매개변수로 주어질 때, 
  가장 먼저 탈락하는 사람의 번호와 그 사람이 자신의 몇 번째 차례에 탈락하는지를 구해서 return 하도록 solution 함수를 완성해주세요.
*/

import Foundation
//Solution 1
func solution(_ n:Int, _ words:[String]) -> [Int] {
    var last_word: String = ""
    var cnt = 0
    var person = 0
    var word_arr = [String]()

    for word in words{
        if word_arr.contains(word){
            break
        }
        if !word_arr.isEmpty{
            if word_arr.last!.last != word.first{
                break
            }
        }
        word_arr.append(word)
        person += 1
        if person >= n{
            person = 0
            cnt += 1
        }
    }

    return cnt == words.count/n ? [0,0] : [person+1, cnt+1]
}

//Solution 2
func solution(_ n:Int, _ words:[String]) -> [Int] {
    for i in 1..<words.count {
        if (words[i-1][words[i-1].index(words[i-1].endIndex, offsetBy:-1)] != words[i][words[i].index(words[i].startIndex, offsetBy: 0)]) || (words[0..<i].contains(words[i])){
            return [((i+1) % n == 0 ? n : (i+1) % n), Int(i/n)+1]
        }
    }
    return [0,0]
}
