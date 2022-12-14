import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a%b)
}

func solution(_ a:Int, _ b:Int) -> Int {
    var b = b/gcd(a,b)
    
    if b == 1 {return 1}
    
    while (b%2 == 0 || b%5 == 0) {
        b = b%2 == 0 ? b/2 : b/5
        if b == 1 {return 1}
    }
    return 2
}
