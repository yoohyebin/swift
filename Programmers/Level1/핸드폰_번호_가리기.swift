/*
  프로그래머스 모바일은 개인정보 보호를 위해 고지서를 보낼 때 고객들의 전화번호의 일부를 가립니다.
  전화번호가 문자열 phone_number로 주어졌을 때, 전화번호의 뒷 4자리를 제외한 나머지 숫자를 전부 *으로 가린 문자열을 리턴하는 함수, solution을 완성해주세요.
*/

//Solution 1
func solution(_ phone_number:String) -> String {
    var num = ""
    for i in 0..<phone_number.count{
        if phone_number.count - i > 4{
            num += "*"
        }
        else {num += String(Array(phone_number)[i])}
    }
    return num
}

//Solution 2
func solution(_ phone_number:String) -> String {
    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
}
