import Foundation

//Solution 1
func solution(_ letter:String) -> String {
    let morse: [String: String] = [".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f", "--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",  "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r", "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x","-.--":"y","--..":"z"]
    var word = letter.split(separator: " ").map{String($0)}
    var answer = ""
    
    for w in word{
        answer += morse[w]!
    }
    
    return answer
}

//Solution 2
func solution(_ letter:String) -> String {
    let morse: [String: String] = [".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f", "--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",  "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r", "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x","-.--":"y","--..":"z"]
    return letter.components(separatedBy: " ").map { morse[$0] ?? "" }.joined() 
}
