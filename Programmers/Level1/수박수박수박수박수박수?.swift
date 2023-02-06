/*
  길이가 n이고, "수박수박수박수...."와 같은 패턴을 유지하는 문자열을 리턴하는 함수, solution을 완성하세요. 
*/

//Solution 1
func solution(_ n:Int) -> String {
    var re = ""
    
    for i in 1...n{
        if i % 2 == 1{
            re += "수"
        }
        else{
            re += "박"
        }
    }
    return re
}

//Solution 2
func solution(_ n:Int) -> String {
    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
}
