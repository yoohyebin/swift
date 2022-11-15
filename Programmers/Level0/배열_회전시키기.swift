import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var numbers = numbers
    if direction == "left"{
        let temp = numbers.removeFirst()
        numbers.append(temp)
    }else{
        let temp = numbers.removeLast()
        numbers.insert(temp, at: 0)
    }
    return numbers
}
