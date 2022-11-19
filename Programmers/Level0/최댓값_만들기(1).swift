import Foundation

func solution(_ numbers:[Int]) -> Int {
    let n = numbers.sorted(by: >)
    return n[0] * n[1]
}
