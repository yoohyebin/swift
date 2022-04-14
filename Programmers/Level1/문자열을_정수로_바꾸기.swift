/*
  문자열 s를 숫자로 변환한 결과를 반환하는 함수, solution을 완성하세요.
*/

func solution(_ s:String) -> Int {
    return s == "-" || s == "+" ?  0 :  Int(s)!
}
