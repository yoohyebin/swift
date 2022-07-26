public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
    let re = B/K - A/K
    return A%K == 0 ? re + 1 : re
}
