/*
  어떤 문장의 각 알파벳을 일정한 거리만큼 밀어서 다른 알파벳으로 바꾸는 암호화 방식을 시저 암호라고 합니다. 
  문자열 s와 거리 n을 입력받아 s를 n만큼 민 암호문을 만드는 함수, solution을 완성해 보세요.
*/

//Solution 1
func solution(_ s:String, _ n:Int) -> String {
    var re = ""
    for i in s{
        var ascii = i.asciiValue!
        if ascii >= 65 && ascii <= 90 {
            if ascii + UInt8(n) > 90 {
                ascii -= 26
            }
        }
        else if ascii>=97 && ascii<=122 {
            if ascii + UInt8(n) > 122 {
                ascii -= 26
            }
        }
        else {
            re += " "
            continue
        }
        re += String(UnicodeScalar((ascii) + UInt8(n)))
        }
    return re
}

//Solution 2
func solution(_ s:String, _ n:Int) -> String {
    return s.utf8.map {
        var code = Int($0)
        switch code {
            case 65...90:
                code = (code + n - 65) % 26 + 65
            case 97...122:
                code = (code + n - 97) % 26 + 97
            default:
                break
        }
        return String(UnicodeScalar(code)!)
    }.joined()
}

//Solution 3
func solution(_ s:String, _ n:Int) -> String {
    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }
    return String(s.map {
        guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else { return $0 }
        let letter = alphabets[(index + n) % alphabets.count]
        return $0.isUppercase ? Character(letter.uppercased()) : letter
    })
}
