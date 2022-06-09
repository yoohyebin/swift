/*
동네 편의점의 주인인 동빈이는 N개의 동전을 가지고 있습니다.
이때 N개의 동전을 이용하여 만들 수 없는 양의 정수 금액 중 최솟값을 구하는 프로그램을 작성하세요.
*/

var n = Int(readLine()!)!
var coins = readLine()!.split(separator: " ").map({Int(String($0))!})
coins = coins.sorted(by: <)

var target = 1
for coin in coins{
    if target < coin{
        break
    }
    target += coin
}

print(target)
