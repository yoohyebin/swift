//정수 N이 주어졌을 때, 소인수분해하는 프로그램을 작성하시오.

import Foundation

var n = Int(readLine()!)!

for i in stride(from: 2, through: Int(sqrt(Double(n))), by: 1) {
    while n % i == 0 {
        print(i)
        n /= i
    }
}

if n > 1 {
    print(n)
}
