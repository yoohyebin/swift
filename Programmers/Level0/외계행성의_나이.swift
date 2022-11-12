import Foundation

//Solution 1
func solution(_ age:Int) -> String {
    var s = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    var age = age
    var re = ""

    while age > 0{
        re += s[age%10]
        age /= 10
    }
    
    return String(re.reversed())
}

//Solution 2
func solution(_ age:Int) -> String {
    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    return String(age).map{alphabet[Int(String($0))!]}.joined()
}
