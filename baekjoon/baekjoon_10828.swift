var stack = [Int]()
for _ in 0..<Int(readLine()!)!{
    var input = readLine()!.split(separator: " ").map{String($0)}
    
    switch input[0]{
    case "push":
        stack.append(Int(input[1])!)
    case "pop":
        stack.isEmpty ? print(-1) : print(stack.popLast()!)
    case "size":
        print(stack.count)
    case "empty":
        stack.isEmpty ? print(1) : print(0)
    case "top":
        stack.isEmpty ? print(-1) : print(stack.last!)
    default:
        break
    }
}
