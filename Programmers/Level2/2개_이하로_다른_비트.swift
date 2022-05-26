/*
  양의 정수 x에 대한 함수 f(x)를 다음과 같이 정의합니다.
    - x보다 크고 x와 비트가 1~2개 다른 수들 중에서 제일 작은 수

  정수들이 담긴 배열 numbers가 매개변수로 주어집니다. numbers의 모든 수들에 대하여 각 수의 f 값을 배열에 차례대로 담아 return 하도록 solution 함수를 완성해주세요.

  1. 짝수인 경우 
    - 비교해야할 수가 짝수라면 2진법으로 나타냈을 때 마지막 끝자리 숫자가 0이다. 
      이 0을 1로 바꾸는게 가장 작은 수이다.
  2. 홀수인 경우
    - 비교해야할 수가 홀수인 경우 2진법으로 나타냈을때 가장 작은(가장 끝자리에 있는) 0을 1로 바꾸고,
     0보다 더 끝자리에 있는 1을 0으로 바꾸는게 가장 작은 수이다.
   
    비교하려는 수 n의 보수를 구한 뒤 n+1과 and 연산하면 가장 작은 0의 자리를 찾을 수 있다.
    last = ~n and (n+1)
    
    가장 작은 0의 자리와 n을 or 연산하여 0의 자리를 1로 바꾸고, 그 다음 1의 자리를 0으로 바꿔준다.
    그 다음 1의 자리는 가장 작은 0의 자리를 shift 연산하여 구할 수 있다.
    re = (n | last) & ~(last>>1)
*/

func solution(_ numbers:[Int64]) -> [Int64] {
    var re = [Int64]()

    for i in 0..<numbers.count{
        if numbers[i] % 2 == 0{re.append(numbers[i] + 1)}
        else{
            let last = (~numbers[i]) & (numbers[i]+1)
            re.append((numbers[i] | last) & ~(last>>1))
        }
    }

    return re
}
