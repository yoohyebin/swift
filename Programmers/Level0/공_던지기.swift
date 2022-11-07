import Foundation

//Solution1
func solution(_ numbers:[Int], _ k:Int) -> Int {
    var current = 0, num = 1

    while num < k{
        if current + 2 >= numbers.count{
            current -= numbers.count
        }
        current += 2
        num += 1
    }

    return numbers[current]
}

//Solution2
func solution(_ numbers:[Int], _ k:Int) -> Int {
    return numbers[((k-1)*2) % numbers.count]
}
