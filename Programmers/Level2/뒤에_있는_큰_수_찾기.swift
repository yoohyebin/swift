import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var n = numbers.count
    var result = [Int](repeating: -1, count: n)
    var stack = [Int]()

    for i in 0..<n{
        while !stack.isEmpty && numbers[stack.last!] < numbers[i] {
            result[stack.removeLast()] = numbers[i]
        }
        stack.append(i)
    }

    return result
}
