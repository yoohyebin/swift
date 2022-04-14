/*
  문자열 s는 한 개 이상의 단어로 구성되어 있습니다. 
  각 단어는 하나 이상의 공백문자로 구분되어 있습니다. 
  각 단어의 짝수번째 알파벳은 대문자로, 홀수번째 알파벳은 소문자로 바꾼 문자열을 리턴하는 함수, solution을 완성하세요.

  제한 사항
    1. 문자열 전체의 짝/홀수 인덱스가 아니라, 단어(공백을 기준)별로 짝/홀수 인덱스를 판단해야합니다.
    2. 첫 번째 글자는 0번째 인덱스로 보아 짝수번째 알파벳으로 처리해야 합니다.
*/

//Solution 1
func solution(_ s:String) -> String {
    var re = ""
    var count = 0

    for i in Array(s){
        if i == " "{
            re += " "
            count = 0
        }
        else if count%2 == 1{
            re += i.lowercased()
            count += 1
        }
        else{
            re += i.uppercased()
            count += 1
        }
    }

    return re
}

//Solution 2
import Foundation
func solution(_ s:String) -> String {
    let a = s.components(separatedBy: " ").map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() } }
    return a.map{ $0.map { $0 }.joined() }.joined(separator: " ")
}
