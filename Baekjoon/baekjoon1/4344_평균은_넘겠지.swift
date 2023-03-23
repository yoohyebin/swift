import Foundation

let n = Int(readLine()!)!

for _ in 0..<n{
    var array = readLine()!.split(separator: " ").map{Int(String($0))!}
    var studentNum = array[0]
    array.removeFirst()
    var re = 0
     
    for i in 0..<studentNum{
        if array[i] > array.reduce(0, {$0 + $1}) / studentNum{
            re += 1
        }
    }
    var rate = (Double(re)/Double(studentNum))*100
    let s = String(format: "%.3f%%", rate)
    print(s)
}
