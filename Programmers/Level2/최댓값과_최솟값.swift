/*
  문자열 s에는 공백으로 구분된 숫자들이 저장되어 있습니다. 
  str에 나타나는 숫자 중 최소값과 최대값을 찾아 이를 "(최소값) (최대값)"형태의 문자열을 반환하는 함수, solution을 완성하세요.
*/

//Solution 1
func solution(_ s:String) -> String {
    var num = s.split(separator: " ").map{Int(String($0))!}

    return String(num.min()!)+" "+String(num.max()!)
}

//Solution 2
func solution(_ s:String) -> String {
    var num = s.split(separator: " ").map{Int(String($0))!}
    num.sort()
    return String(num[0]) + " " + String(num[num.count - 1])
}
