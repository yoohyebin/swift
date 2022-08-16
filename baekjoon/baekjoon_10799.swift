let string = readLine()!
var stack = [Character]()
var re = 0
var front: Character = "("

for s in string {
    if s == "("{
        stack.append(s)
    }
    if s == ")"{
        stack.removeLast()
        if front == "(" {
            re += stack.count
        } else {
            re += 1
        }
    }
    
    front = s
}
print(re)
