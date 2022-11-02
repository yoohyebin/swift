import Foundation

func gcd(_ num1: Int, _ num2: Int) -> Int{
    if num2 == 0 {
        return num1
    }else{
        return gcd(num2, num1%num2)
    }
}

func solution(_ n:Int) -> Int {
    return n/gcd(6,n)
}
