/*
  JadenCase란 모든 단어의 첫 문자가 대문자이고, 그 외의 알파벳은 소문자인 문자열입니다. 단, 첫 문자가 알파벳이 아닐 때에는 이어지는 알파벳은 소문자로 쓰면 됩니다.
  문자열 s가 주어졌을 때, s를 JadenCase로 바꾼 문자열을 리턴하는 함수, solution을 완성해주세요.
*/

func solution(_ s:String) -> String {
 
    let words = s.split(separator: " ").map{String($0)}
    var charaters = Array(repeating: [String](), count: words.count)
    var answer = Array(repeating: String(), count: words.count)
    
    for w in 0..<words.count {
        charaters[w] = words[w].map{String($0).lowercased()}
        if charaters[w] != [] {
        charaters[w][0] = charaters[w][0].uppercased()
        }
        answer[w] = charaters[w].joined()
    }
 
    return answer.joined(separator: " ")
}
