func solution(_ s:String) -> Bool
{
    var stack = [Character]()
    
    for i in s{
        if i == "("{
            stack.append(i)
        }else{
            if stack.isEmpty{
                return false
            }
            stack.removeLast()
        }
    }
    return stack.isEmpty ? true : false 
}
