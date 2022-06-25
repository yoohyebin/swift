/*
  자연수 n과 정수 k가 주어졌을 때 이항 계수 
  \(\binom{N}{K}\)를 구하는 프로그램을 작성하시오.
*/

let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nk[0]
let k = nk[1]
                                                   
func fac(_ x: Int) -> Int{
    if x <= 1{
        return 1
    }
    return x*fac(x-1)
}

print(fac(n)/(fac(n-k)*fac(k)))
