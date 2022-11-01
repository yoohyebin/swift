import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    return n*(2<<(t-1))
}
