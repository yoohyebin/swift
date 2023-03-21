//12ms
import Foundation

let n = Int(readLine()!)!
let input = readLine()!.map{$0}
var stack = [Double]()
var arr = [Double]()

for _ in 0..<n {
    arr.append(Double(readLine()!)!)
}

for i in input {
    switch i {
    case "+":
        stack.append(stack.removeLast() + stack.removeLast())
    case "-":
        let f = stack.removeLast()
        stack.append(stack.removeLast() - f)
    case "*":
        stack.append(stack.removeLast() * stack.removeLast())
    case "/":
        let f = stack.removeLast()
        stack.append(stack.removeLast() / f)
    default:
        let index = i.asciiValue! - 65
        stack.append(arr[Int(index)])
    }
}
print(String(format: "%.2f", stack[0]))
