let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
var multi = a*b*c
var array = [Int](repeating: 0, count: 10)

while multi != 0{
    array[multi%10] += 1
    multi /= 10
}
array.forEach { print($0) }
