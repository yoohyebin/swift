/*
  한 마을에 모험가가 N명 있습니다. 모험가 길드에서는 N명의 모험가를 대상으로 '공포도'를 측정했는데,
  '공포도'가 높은 모험가는 쉽게 공포를 느껴 위험 상황에서 제대로 대처할 능력이 떨어집니다.
  모험가 길드장은 모험가 그룹을 안전하게 구성하고자 공포도가 X인 모험가는 반드시 X명 이상으로 구성한 모험가 그룹에 참여해야한다고 규정했습니다.

  N명의 모험가에 대한 정보가 주어졌을 때, 여행을 떠날 수 있는 그룹 수의 최댓값을 구하는 프로그램을 작성하시오.
*/

var n = Int(readLine()!)!
var people = readLine()!.split(separator: " ").map{Int(String($0))!}
people = people.sorted(by: <)

var cnt = 0
var re = 0

for p in people{
    cnt += 1
    if cnt >= p{
        re += 1
        cnt = 0
    }
}

print(re)
