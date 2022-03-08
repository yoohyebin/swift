let S = readLine()!
var R: [String] = []
for i in 97...122 {
    R.append(String(Array(S).firstIndex(of: Character(UnicodeScalar(i)!)) ?? -1))
}
print(R.joined(separator: " "))
