/*
    백준 10872 "팩토리얼"

    N 팩토리얼을 출력하는 문제
*/

func fac (i :Int) -> Int{
    if  i <= 1{return 1}
    return i * fac(i: i-1)
}

var n = Int(readLine()!)!
print(fac(i: n))
