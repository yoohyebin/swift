public func solution(_ A : inout [Int]) -> Int {
    if A.count <= 1{
        return 0
    } 

    var circle = [[Int]]()
    var re = 0
    
    for i in 0..<A.count{
        circle.append([i-A[i], i+A[i]])
    }
    
    circle.sort(){
        $0[0] < $1[0]
    }
    
    for i in 0..<circle.count-1{
        for j in i+1..<circle.count{
            if re > 10000000{
                return -1
            }
            if circle[j][0] > circle[i][1]{
                break
            }
            if(circle[j][0] <= circle[i][1]){
                re += 1
            }
        }
    }

    return re
}
