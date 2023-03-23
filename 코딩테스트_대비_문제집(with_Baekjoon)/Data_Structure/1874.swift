//88ms
let n = Int(readLine()!)!
var result = "", current = 1
var stack = [Int]()

for _ in 0..<n {
    let num = Int(readLine()!)!
    while current <= num {
        stack.append(current)
        result += "+\n"
        current += 1
    }
    
    if stack.last! == num {
        stack.removeLast()
        result += "-\n"
    }
}

stack.isEmpty ? print(result) : print("NO")
