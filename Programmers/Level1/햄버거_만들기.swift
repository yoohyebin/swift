import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var stacks: [Int] = []
    var count: Int = 0
    for ingredient in ingredient {
        stacks.append(ingredient)
        let suffix = stacks.suffix(4)
        if suffix == [1,2,3,1] {
            count += 1
            stacks.removeLast(4)
        }
    }
    return count
}
