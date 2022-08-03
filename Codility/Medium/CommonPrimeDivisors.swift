func GCD(_ A: Int, _ B: Int) -> Int{
    if (B == 0) {return A}
    return GCD(B, A%B)
}
public func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
    var cnt = 0
    
    for  i in 0..<A.count{
        var flag = true
        var a = A[i], b = B[i]
        let gcd = GCD(a, b)
        
        while a != 1{
            let g = GCD(a, gcd)
            if g == 1{
                flag = false
                break
            }
            a /= g
        }
        if !flag {continue}
        
        while b != 1{
            let g = GCD(b, gcd)
            if g == 1{
                flag = false
                break
            }
            b /= g
        }
        if flag {
            cnt += 1
        }
        
    }
    return cnt
}
