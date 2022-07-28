public func solution(_ H : inout [Int]) -> Int {
    var stack = [Int]()
    var re = 0

    for h in H{
        while(!stack.isEmpty && stack.last! > h){
            stack.removeLast()
        }
        if (stack.isEmpty || stack.last! < h){
            stack.append(h)
            re += 1
        }
    }
    return re
}
