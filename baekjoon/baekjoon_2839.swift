var n = Int(readLine()!)!
var re = 0

if n % 5 == 0 {print(n/5)}
else {
    while n >= 0 {
        n -= 3
        re += 1
         
        if n%5 == 0{
            print(re + (n/5))
            break
        }
    }
    if n<0 {print("-1")}
}
