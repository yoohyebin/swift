public func solution(_ S : inout String) -> Int {
    var stack = [Character]()

    for i in S{
        if (i == "(" || i == "{" || i == "[") {stack.append(i)}
        else{
            if stack.isEmpty{return 0}
            let s = stack.removeLast()

            if i == ")" && s != "("{ return 0 } 
            else if i == "}" && s != "{"{ return 0 } 
            else if i == "]" && s != "["{ return 0 } 
        }
    }

    return stack.isEmpty ? 1 : 0
}
