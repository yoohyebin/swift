/*
 백준 9184 "신나는 함수 실행"
 동적 계획법
 
 오래 걸리는 재귀 함수 코드를 짧은 시간안에 해결 할 수 있도록 하는 문제
 계산을 통해 얻은 값을 메모리에 저장하고 재방문을 할 경우 저장된 값을 사용
 */

var dp :  [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: 21), count: 21), count: 21)

func w (a: Int, b: Int, c: Int) -> Int{
    if a <= 0 || b <= 0 || c <= 0{
        return 1
    }
    
    if a < 21, b < 21, c < 21, dp[a][b][c] != 0 {
        return  dp[a][b][c]
    }
    
    if a > 20 || b > 20 || c > 20{
        dp[20][20][20] = w(a: 20, b: 20, c: 20)
        return  dp[20][20][20]
    }
    
    if a < b, b < c{
        dp[a][b][c] = w(a: a, b: b, c: c - 1) + w(a: a, b: b - 1, c: c - 1) - w(a: a, b: b - 1, c: c)
        return dp[a][b][c]
    }
    
    dp[a][b][c] = w(a: a - 1, b: b, c: c) + w(a: a - 1, b: b - 1, c: c) + w(a: a - 1, b: b, c: c - 1) - w(a: a - 1, b: b - 1, c: c - 1)
    return dp[a][b][c]
}

while true{
    var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
    if arr[0] == -1, arr[1] == -1, arr[2] == -1{
        break
    }
    print("w(\(arr[0]), \(arr[1]), \(arr[2])) =",w(a: arr[0], b: arr[1], c: arr[2]))
}
