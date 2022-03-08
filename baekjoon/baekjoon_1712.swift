var price = readLine()!.split(separator: " ").map{Int(String($0))!}

if price[1] >= price[2]{ print("-1")}
else{
    print(price[0]/(price[2]-price[1])+1)
}
