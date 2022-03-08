/*
    백준 10870 "피보나치 수 5"
    
    n번째 피보나치 수를 구하는 문제
*/

var n = Int(readLine()!)!
var a = 0, b = 1, re = 0

if n == 0{print("0")}
else if n == 1{print("1")}
else{
    for _ in 2...n{
        re = a+b
        a = b
        b = re
    }
    print(re)
}
