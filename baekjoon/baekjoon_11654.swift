/*
  백준 11654 "아스키 코드"
  입력된 단어에 대한 아스키코드 출력하는 문제
*/

//Solution1
print(Character(readLine()!).unicodeScalars.first!.value)

//Solution2 - 이게 조금 더 빠르고 메모리 덜 차지
print(Character(readLine()!).asciiValue!)
