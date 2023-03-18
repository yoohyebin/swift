//Solution 1 - 8ms, 배열 사용
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!
    var stack = [Character]()
    var flag = true

    for s in input{
        if s == "(" {
            stack.append("(")
        }
        else {
            if stack.isEmpty {
                flag = false
                break
            }
            stack.removeLast()
        }
    }
    stack.isEmpty && flag ? print("YES") : print("NO")
}

//Solution 2 - 8ms, 덧셈 사용
func isValidPS(_ str: String) -> Bool {
    var standard = 0
    for char in str {
        if char == "(" {
            standard += 1
        } else if char == ")" {
            standard -= 1
        }
           
        if standard < 0 {
            return false
        }
    }
    return standard == 0
}

if let inputNumber = Int(readLine() ?? "") {
    for _ in 0..<inputNumber {
        print(isValidPS(readLine() ?? "") ? "YES" : "NO")
    }
}
