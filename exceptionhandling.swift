enum DivisionError: Error{
    case DivideByZero
}

func divide(num1:Float, num2: Float ) throws -> Float{

    guard num2 != 0.0 else {
        throw DivisionError.DivideByZero
    }

    return num1/num2
}

do {
    try divide(num1: 4,num2: 0)
} catch DivisionError.DivideByZero{
    print("Cant divide by zero!")
}