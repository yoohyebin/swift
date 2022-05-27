/*
  IT 벤처 회사를 운영하고 있는 라이언은 매년 사내 해커톤 대회를 개최하여 우승자에게 상금을 지급하고 있습니다.
  이번 대회에서는 우승자에게 지급되는 상금을 이전 대회와는 다르게 다음과 같은 방식으로 결정하려고 합니다.
  해커톤 대회에 참가하는 모든 참가자들에게는 숫자들과 3가지의 연산문자(+, -, *) 만으로 이루어진 연산 수식이 전달되며, 
  참가자의 미션은 전달받은 수식에 포함된 연산자의 우선순위를 자유롭게 재정의하여 만들 수 있는 가장 큰 숫자를 제출하는 것입니다.

  단, 연산자의 우선순위를 새로 정의할 때, 같은 순위의 연산자는 없어야 합니다. 즉, + > - > * 또는 - > * > + 등과 같이 연산자 우선순위를 정의할 수 있으나 
  +,* > - 또는 * > +,-처럼 2개 이상의 연산자가 동일한 순위를 가지도록 연산자 우선순위를 정의할 수는 없습니다. 
  수식에 포함된 연산자가 2개라면 정의할 수 있는 연산자 우선순위 조합은 2! = 2가지이며, 연산자가 3개라면 3! = 6가지 조합이 가능합니다.
  만약 계산된 결과가 음수라면 해당 숫자의 절댓값으로 변환하여 제출하며 제출한 숫자가 가장 큰 참가자를 우승자로 선정하며, 우승자가 제출한 숫자를 우승상금으로 지급하게 됩니다.

  참가자에게 주어진 연산 수식이 담긴 문자열 expression이 매개변수로 주어질 때, 우승 시 받을 수 있는 가장 큰 상금 금액을 return 하도록 solution 함수를 완성해주세요.
*/

import Foundation

func solution(_ expression:String) -> Int64 {
    let priorities: [[String]] = [
            ["*", "+", "-"],
            ["*", "-", "+"],
            ["+", "*", "-"],
            ["+", "-", "*"],
            ["-", "*", "+"],
            ["-", "+", "*"]
        ]
    let numbers = expression.split(whereSeparator: {!$0.isNumber}).map{Int64($0)!}
    let operators = expression.split(whereSeparator: {$0.isNumber}).map{String($0)}
    var max: Int64 = 0

    for priority in priorities {
        var num = numbers, op = operators

        for p in priority{
            while op.contains(p){
                let index = op.firstIndex(of: p)!

                switch (p){
                case "+":
                    num[index] += num[index+1]
                case "-":
                    num[index] -= num[index+1]
                case "*":
                    num[index] *= num[index+1]
                default:
                    break
                }
                num.remove(at: index+1)
                op.remove(at: index)
            }
        }
        max = max < abs(num.first!) ?  abs(num.first!) : max
    }

    return max
}
