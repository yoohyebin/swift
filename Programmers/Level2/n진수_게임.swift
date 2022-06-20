/*
  튜브가 활동하는 코딩 동아리에서는 전통적으로 해오는 게임이 있다. 이 게임은 여러 사람이 둥글게 앉아서 숫자를 하나씩 차례대로 말하는 게임인데, 규칙은 다음과 같다.
    1, 숫자를 0부터 시작해서 차례대로 말한다. 첫 번째 사람은 0, 두 번째 사람은 1, … 열 번째 사람은 9를 말한다.
    2. 10 이상의 숫자부터는 한 자리씩 끊어서 말한다. 즉 열한 번째 사람은 10의 첫 자리인 1, 열두 번째 사람은 둘째 자리인 0을 말한다.

  이진수로 진행하는 게임에 익숙해져 질려가던 사람들은 좀 더 난이도를 높이기 위해 이진법에서 십육진법까지 모든 진법으로 게임을 진행해보기로 했다. 
  숫자 게임이 익숙하지 않은 튜브는 게임에 져서 벌칙을 받는 굴욕을 피하기 위해, 자신이 말해야 하는 숫자를 스마트폰에 미리 출력해주는 프로그램을 만들려고 한다. 
  튜브의 프로그램을 구현하라.
*/

//Solution 1
func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var re: String = ""
    var num: Int = 0
    var turn = 1

    while re.count < t {
        var change = String(num, radix: n, uppercase: true)

        for n in change{
            if turn == p{
                re += String(n)
            }
            if turn == m{
                turn = 0
            }
            if re.count == t {break}
            turn += 1
        }
        num += 1
    }
    return re
}

//Solution 2
func solution(_ n: Int, _ t: Int, _ m: Int, _ p: Int) -> String {
    let count = t*m
    var values: [String] = []
    var number = 0
    while values.count < count {
        values += String(number, radix: n).compactMap({ String($0).uppercased() })
        number += 1
    }
    return stride(from: p - 1, to: count, by: m).reduce("", { $0 + values[$1] })
}
