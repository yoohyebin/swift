var a = readLine()!.split(separator: " ").map{Int(String($0.reversed()))!}
print(a.max()!)
