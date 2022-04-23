/*
  실패율은 다음과 같이 정의한다.
    - 스테이지에 도달했으나 아직 클리어하지 못한 플레이어의 수 / 스테이지에 도달한 플레이어 수
  
  전체 스테이지의 개수 N, 게임을 이용하는 사용자가 현재 멈춰있는 스테이지의 번호가 담긴 배열 stages가 매개변수로 주어질 때, 
  실패율이 높은 스테이지부터 내림차순으로 스테이지의 번호가 담겨있는 배열을 return 하도록 solution 함수를 완성하라.
*/

//test-case 5,9,22번 시간 초과
import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var re = Dictionary<Int, Double>()
    var num = stages.count
    
    for i in 1...N{
        if stages.contains(i) {
            var s = stages.filter{$0 == i}.count
            re[i] = Double(s)/Double(num)
            num -= s
        }
        else { re[i] = 0}
    }
    
    return re.sorted(by: <).sorted(by: {$0.value > $1.value}).map{$0.key}
}
