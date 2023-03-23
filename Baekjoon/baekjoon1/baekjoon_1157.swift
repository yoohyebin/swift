/*
    백준 1157 "단어 공부"

    영어 단어를 입력받아 단어에서 가장 많이 사용된 알파벳이 무엇인지 알아내는 문제 (가장 많이 사용된 알파벳이 여러 개 존재하는 경우에는 ?를 출력)
*/

import Foundation

let s = readLine()!.uppercased()
var a = [Int](repeating: 0, count: 26)

for i in s.utf8{
    a[Int(i)-65] += 1
}

if a.firstIndex(of: a.max()!)! == a.lastIndex(of: a.max()!)!{ print(UnicodeScalar(a.firstIndex(of: a.max()!)!+65)!)}
else { print("?")}
