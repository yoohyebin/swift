func solution(_ msg:String) -> [Int] {
    var i = 0
    var string_value = Array(msg)
    var arr = [String]()
    var answer = [Int]()
    
    arr.append("")
    for i in 0...25{
        arr.append(String(Character(UnicodeScalar(65+i)!)))
    }
    
     while i < msg.count{
        for k in i..<msg.count{
            if arr.contains(String(string_value[i...k])) && (k != msg.count-1){
                if !arr.contains(String(string_value[i...k+1])){
                    arr.append(String(string_value[i...k+1]))
                    answer.append(arr.firstIndex(of: String(string_value[i...k]))!)
                    i = k
                    break
                }
            }
            if k == msg.count - 1{
                answer.append(arr.firstIndex(of: String(string_value[i...k]))!)
                i = k
            }
        }
        i += 1
    }
    
    return answer
}
