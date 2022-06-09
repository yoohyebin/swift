/*
각 자리가 숫자(0부터 9)로만 이루어진 문자열 S가 주어졌을 때, 
왼쪽부터 오른쪽으로 하나씩 모든 숫자를 확인하며 숫자 사이에 'x' 혹은 '+' 연산자를 넣어 결과적으로 만들어질 수 있는 가장 큰수를 구하는 프로그램을 작성하시오.

단, +보다 x를 먼저 계산하는 일반적인 방식과는 달리, 모든 연산은 왼쪽에서부터 순서대로 이루어진다고 가정합니다.

=> 숫자가 0또는 1인 경우는 더하기, 나머지 경우는 곱하기 연산을 한다.
*/

var numbers = readLine()!.map{Int(String($0))!}
var re: Int = Int(exactly: numbers[0])!

for i in 1..<numbers.count{
    if re <= 1 || numbers[i] <= 1{
        re += numbers[i]
    }else{
        re *= numbers[i]
    }
}
print(re)
