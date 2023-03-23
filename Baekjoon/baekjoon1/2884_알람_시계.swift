var time = readLine()!.split(separator: " ").map{Int($0)!}
time[1] -= 45

if time[1]<0 {
    time[0] -= 1
    time[1] += 60
}
if time[0] < 0{ time[0] += 24}

print("\(time[0]) \(time[1])")
