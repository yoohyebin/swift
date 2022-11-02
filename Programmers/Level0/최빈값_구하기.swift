import Foundation

func solution(_ array:[Int]) -> Int {
    var dict = [Int: Int]()

    for a in array{
        dict[a, default: 0] += 1
    }

    let max = dict.max{$0.value <= $1.value}!

    return dict.values.filter{$0 == max.value}.count > 1 ? -1 : max.key
}
