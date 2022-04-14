/*
  문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인해주는 함수, solution을 완성하세요.
*/

//Solution 1
func solution(_ s:String) -> Bool {
    return ((s.count == 4 || s.count == 6) && (s.filter{$0.isLetter}.count == 0)) ? true : false
}

//Solution 2
func solution(_ s:String) -> Bool {
    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}
