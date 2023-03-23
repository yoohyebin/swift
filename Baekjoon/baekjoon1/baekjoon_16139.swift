//50점
let s = readLine()!.map{String($0)}

for _ in 0..<Int(readLine()!)!{
    let input = readLine()!.split(separator: " ").map{String($0)}
    var a = input[0]
    let l = Int(input[1])!, r = Int(input[2])!
    
    print(s[l...r].filter{$0 == a}.count)
}
