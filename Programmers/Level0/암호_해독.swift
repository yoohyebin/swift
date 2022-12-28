import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    let cipher = cipher.map{String($0)}
    var answer = ""
  
    for i in stride(from: code, through: cipher.count, by: code){
        answer += cipher[i-1]
    }

    return answer
}
