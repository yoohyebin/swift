import Foundation

func isPrimeNumber(_ n: Int) -> Bool{
    if n == 2 || n == 3 {return true}
    if n < 2 {return false}

    for i in 2...Int(sqrt(Double(n))){
        if n % i == 0{ return false}
    }   
    return true
}

func solution(_ n:Int, _ k:Int) -> Int {
    let num = String(n, radix: k)
    let number = num.split(separator: "0").map{Int(String($0))!}
    var answer = 0

    for n in number{
        if isPrimeNumber(n){
            answer += 1
        }
    }

    return answer
}
