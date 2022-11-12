import Foundation

//Solution 1
func solution(_ rsp:String) -> String {
   var answer = ""

    for i in rsp.map{String($0)}{
        switch i{
        case "2":
            answer += "0"
        case "0":
            answer += "5"
        case "5":
            answer += "2"
        default:
            break
        }   
    } 
    return answer
}

//Solution 2
func solution(_ rsp:String) -> String {
  return rsp.map{$0 == "0" ? "5" : $0 == "2" ? "0" : "2"}.joined()
}
