/*
  다음 규칙을 지키는 문자열을 올바른 괄호 문자열이라고 정의합니다.

    - (), [], {} 는 모두 올바른 괄호 문자열입니다.
    - 만약 A가 올바른 괄호 문자열이라면, (A), [A], {A} 도 올바른 괄호 문자열입니다. 예를 들어, [] 가 올바른 괄호 문자열이므로, ([]) 도 올바른 괄호 문자열입니다.
    - 만약 A, B가 올바른 괄호 문자열이라면, AB 도 올바른 괄호 문자열입니다. 예를 들어, {} 와 ([]) 가 올바른 괄호 문자열이므로, {}([]) 도 올바른 괄호 문자열입니다.

  대괄호, 중괄호, 그리고 소괄호로 이루어진 문자열 s가 매개변수로 주어집니다. 
  이 s를 왼쪽으로 x (0 ≤ x < (s의 길이)) 칸만큼 회전시켰을 때 s가 올바른 괄호 문자열이 되게 하는 x의 개수를 return 하도록 solution 함수를 완성해주세요.
*/

import Foundation
//괄호가 올바른지 확인하는 함수
func isCorrect(_ s: String) -> Bool{
    var queu = [Character]()

    for c in s{
        if queu.isEmpty{
            queu.append(c)
        }else{
            //guard let last = queu.last else{continue}
            let last = queu.last
            switch last{
            case "[": if c == "]" {queu.removeLast()} else {queu.append(c)}
            case "(": if c == ")" {queu.removeLast()} else {queu.append(c)}
            case "{": if c == "}" {queu.removeLast()} else {queu.append(c)}
            default: queu.append(c)
            }
        }
    }

    return queu.isEmpty
}

func solution(_ s:String) -> Int {
    var s_value = Array(s)
    var re = 0

    for i in 0..<s.count{
        if isCorrect(String(s_value)) {re += 1}

        var temp = s_value.removeFirst()
        s_value.append(temp)
    }
    return re
}
