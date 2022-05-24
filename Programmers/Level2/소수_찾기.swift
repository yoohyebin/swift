/*
  한자리 숫자가 적힌 종이 조각이 흩어져있습니다. 흩어진 종이 조각을 붙여 소수를 몇 개 만들 수 있는지 알아내려 합니다.
  각 종이 조각에 적힌 숫자가 적힌 문자열 numbers가 주어졌을 때, 종이 조각으로 만들 수 있는 소수가 몇 개인지 return 하도록 solution 함수를 완성해주세요.
*/

import Foundation

func isPrime(_ n: Int) -> Bool{
    if n < 4 {return n < 2 ? false : true}

    for i in 2...Int(sqrt(Double(n))){
        if n % i == 0 {return false}
    }
    return true
}

func solution(_ numbers:String) -> Int {
    let num = numbers.map{String($0)}
    var re = [Int]()
    var visited: [Bool] = Array(repeating: false, count: num.count)

    func DFS( _ string: String, _ len: Int){
        if string.count == len{
            let n = Int(string)!
            if isPrime(n) && !re.contains(n){
                re.append(n)
            }
        }else{
            for i in 0..<num.count{
                if visited[i] {continue}
                visited[i] = true
                DFS(string+num[i], len)
                visited[i] = false
            }
        }
    }
    for i in 1...num.count
    {
        DFS("", i)
    }

    return re.count
}
