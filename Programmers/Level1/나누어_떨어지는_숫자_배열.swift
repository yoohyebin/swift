/*
  array의 각 element 중 divisor로 나누어 떨어지는 값을 오름차순으로 정렬한 배열을 반환하는 함수, solution을 작성해주세요.
  divisor로 나누어 떨어지는 element가 하나도 없다면 배열에 -1을 담아 반환하세요.
*/

//Solution 1
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var re = [Int]()

    for i in arr{
        if i % divisor == 0{
            re.append(i)
        }
    }
    return (re.count == 0) ? [-1] : re.sorted()
}

//Solution 2
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let array = arr.sorted().filter{ $0 % divisor == 0 }
    return  array == [] ? [-1] : array
}
