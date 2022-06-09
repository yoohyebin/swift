/*
  두 수의 최소공배수(Least Common Multiple)란 입력된 두 수의 배수 중 공통이 되는 가장 작은 숫자를 의미합니다. 
  n개의 숫자를 담은 배열 arr이 입력되었을 때 이 수들의 최소공배수를 반환하는 함수, solution을 완성해 주세요.
*/

func gcd(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : gcd(b, mod)
}
 
func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}
func solution(_ arr:[Int]) -> Int {
    return arr.reduce(1){lcm($0, $1)}
}
