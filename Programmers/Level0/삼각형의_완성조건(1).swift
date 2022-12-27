import Foundation

func solution(_ sides:[Int]) -> Int {
    let s = sides.sorted(by: >)
    return s[0] < s[1] + s[2] ? 1 : 2
}
