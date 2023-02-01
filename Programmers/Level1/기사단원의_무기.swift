import Foundation

//Solution 1
func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result = 0
    var i = 1, cnt = 0

    for n in 1...number{
        i = 1
        cnt = 0
        while i*i <= n{
            if n%i == 0{
                cnt += n/i == i ? 1 : 2
            }
            i += 1
        }
        result += cnt <= limit ? cnt : power
    }
    return result
}

//Solution 2
func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var attack = [Int](repeating: 0, count: number+1)

    for i in 1...number {
        var c = i

        while c <= number {
            attack[c] += 1
            c += i
        }
    }
    attack = attack.map { $0 > limit ? power : $0 }
    return attack.reduce(0, +)
}
