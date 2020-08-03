class FibIterator : IteratorProtocol { //iterator protocol
    var (a, b) = (0, 1)

    func next() -> Int? {
        (a, b) = (b, a + b)
        return a             //returns 1 value
    }
}

let fibs = AnySequence{FibIterator()}

print(Array(fibs.prefix(10)))