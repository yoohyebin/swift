import Foundation

//Solution 1
func solution(_ my_string:String) -> String {
    var answer = ""

    for s in my_string.map{$0}{
        if  65 <= s.asciiValue! && s.asciiValue! <= 90{
            answer += s.lowercased()
        }else{
            answer += s.uppercased()
        }
    }
    return answer
}

//Solution 2
func solution(_ my_string:String) -> String {
    var result = ""
  
    for c in my_string {
        let s = String(c)
        let lo = s.lowercased()
        let up = s.uppercased()
        result += (s == lo) ? up : lo
    }
    return result

}
