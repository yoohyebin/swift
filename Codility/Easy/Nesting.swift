public func solution(_ S : inout String) -> Int {
    var s = [Character]()
    for i in S{
        if  (i == "(" || i == "{" || i == "[") {s.append(i)}
        else{
            if s.isEmpty{ return 0 }
            let temp = s.removeLast()

            if i == "(" && temp != ")" {return 0}
            else if i == "{" && temp != "}" {return 0}
            else if i == "[" && temp != "]" {return 0}
        }
    }
    return s.isEmpty ? 1 : 0
}
