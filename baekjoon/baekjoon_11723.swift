//시간 초과
//FileIO 써야할듯


let N = Int(readLine()!)!
var S: Int = 0
var re = ""

for _ in 0..<N{
    var data = readLine()!.split(separator: " ").map{String($0)}
    switch data[0]{
    case "add":
        S |= (1 << Int(data[1])!)
    case "remove":
        S &= ~(1 << Int(data[1])!)
    case "check":
        re += ((S&(1 << Int(data[1])!)) != 0) ? "1\n" : "0\n"
    case "toggle":
        S ^= (1 << Int(data[1])!)
    case "all":
        S |= (~0)
    case "empty":
        S &= 0
    default:
        break
    }
}
print(re)
