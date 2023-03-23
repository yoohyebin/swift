var stack = [Int]()
for _ in 0..<Int(readLine()!)!{
    var n = Int(readLine()!)!
    if n == 0{
        stack.removeLast()
    }else{
        stack.append(n)
    }
}
print(stack.reduce(0,+))
