public func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
    var stack = [Int]()
    var alive = 0

    for i in 0..<A.count{
        if B[i] == 1{
            stack.append(A[i])
        }
        else{
            while(!stack.isEmpty){
                if stack.last! < A[i]{
                    stack.removeLast()
                }else{
                    break
                }
            }
            if stack.isEmpty{
                alive += 1
            }
        }
    }
    return alive + stack.count
}
