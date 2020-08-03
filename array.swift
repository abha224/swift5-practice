// var numbers = [1 , 2 ,3 ]

// for i in (0...(numbers.count()-2))
// print(numbers[i]*numbers[i+1])

func fib(_ n: Int) -> Int {
    var a = 1
    var b = 1
    guard n > 1 else { return a }
    
    (2...n).forEach { _ in (a, b) = (a + b, a) }
    return a
}

var num
print("Please enter a number:")
if let name = readLine() {
    print("thank you")
} else {
    print("Why are you being so coy?")
}
print(fib(num))

