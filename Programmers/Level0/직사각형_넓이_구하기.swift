import Foundation

//Solution 1
func solution(_ dots:[[Int]]) -> Int {
    var x = dots[0][0] - dots[1][0] != 0 ? dots[0][0] - dots[1][0] : (dots[0][0] - dots[2][0] != 0 ? dots[0][0] - dots[2][0] : dots[0][0] - dots[3][0])
    var y = dots[0][1] - dots[1][1] != 0 ? dots[0][1] - dots[1][1] : (dots[0][1] - dots[2][1] != 0 ? dots[0][1] - dots[2][1] : dots[0][1] - dots[3][1])
    return abs(x)*abs(y)
}

//Solution 2
func solution(_ dots:[[Int]]) -> Int {
    let dots = dots.sorted(by: { ($0[0], $0[1]) < ($1[0], $1[1]) })
    return (dots.last![0] - dots.first![0]) * (dots.last![1] - dots.first![1])
}
