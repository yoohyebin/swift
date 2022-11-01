import Foundation

func solution(_ n:Int) -> Int {
    return sqrt(Double(n)).truncatingRemainder(dividingBy: 1.0) == 0 ? 1 : 2
}
