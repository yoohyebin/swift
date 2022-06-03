/*
  N가지 종류의 화폐가 있다. 이 화폐들의 개수를 최소한으로 이용해서 그 가치의 합이 M원이 되도록 하려고 한다.
  이때 각 화폐는 몇 개라도 사용할 수 있으며, 사용한 화폐의 구성은 같지만 순서만 다른 것은 같은 경우로 구분한다.
  M원을 만드는 것이 불가능할 경우 -1을 출력한다.
*/

var inputdata = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = inputdata[0], m = inputdata[1]

var arr = [Int]()
for _ in 0..<n{ arr.append(Int(readLine()!)!)}

var d: [Int] = Array(repeating: 10001, count: m+1)
d[0] = 0

for i in 1..<n{
    for j in min(arr[i],m)...max(arr[i],m){
        var index = j - arr[i] > 0 ? j - arr[i] : m + j - arr[i]
        if d[index] != 10001{
            d[j] = min(d[j], d[index]+1)
        }
    }
}

d[m] == 10001 ? print(-1) : print(d[m])
