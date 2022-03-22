/*
  네오가 프로도에게 숫자를 건넬 때 일부 자릿수를 영단어로 바꾼 카드를 건네주면 프로도는 원래 숫자를 찾는 게임입니다.
  
  ex)
    1478 → "one4seveneight"
    234567 → "23four5six7"
   
  일부를 영단어로 바꾼 문자열을 원래 숫자로 바꿔 출력하는 문제입니다.
*/
import Foundation

func solution(_ s:String) -> Int {
    var re = s
    var num: [String] = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    for i in 0..<num.count{
        re = re.replacingOccurrences(of: num[i], with: "\(i)")
    }
    
    return Int(re)!
}
