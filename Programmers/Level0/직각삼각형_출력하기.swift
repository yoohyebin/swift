import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }

//Solution 1
for i in 0..<n[0]{
    for j in 0..<i+1{
        print("*", terminator: "")
    }
    print("")
}
//Solution 2
for i in (1...n[0]) {
    print(String(repeating: "*", count: i))
}
