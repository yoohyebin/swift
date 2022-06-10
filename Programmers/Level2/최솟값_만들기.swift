/*
  길이가 같은 배열 A, B 두개가 있습니다. 각 배열은 자연수로 이루어져 있습니다.
  배열 A, B에서 각각 한 개의 숫자를 뽑아 두 수를 곱합니다. 이러한 과정을 배열의 길이만큼 반복하며, 두 수를 곱한 값을 누적하여 더합니다. 
  이때 최종적으로 누적된 값이 최소가 되도록 만드는 것이 목표입니다. (단, 각 배열에서 k번째 숫자를 뽑았다면 다음에 k번째 숫자는 다시 뽑을 수 없습니다.)
  배열 A, B가 주어질 때 최종적으로 누적된 최솟값을 return 하는 solution 함수를 완성해 주세요.

  => 그리디 문제 - A는 오름차순으로 정렬, B는 내림차순으로 정렬하여 곱한 값을 re 변수에 더한다.
*/

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var  re: Int = 0
    var a = A.sorted(by: <)
    var b = B.sorted(by: >)
    
    for _ in 0..<a.count{
        re += a.removeFirst()*b.removeFirst()
    }
    
    return re
}
