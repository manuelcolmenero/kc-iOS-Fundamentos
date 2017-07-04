//: [Previous](@previous)

/*
 Las estructuras tienen dos ventajas sobre las tuplas:
 
 * Los componentes siempre tienen nombre
 * Pueden tener métodos
 
 */

struct Complex{
    let x : Double
    let y : Double
    
    // Inits
    init(real: Double, imaginary: Double) {
        (x, y) = (real, imaginary)
    }
    
    init(real: Double) {
        self.init(real: real, imaginary: 0)
    }
    
    init(imaginary: Double) {
        self.init(real: 0, imaginary: imaginary)
    }
    
    // Operations
    func magnitude() -> Double {
        return ((x * x) + (y * y)).squareRoot()
    }
}

// El compilador nos genera un inicializador por defecto
let a = Complex(real: 3, imaginary: -4)
Complex(imaginary: 7)
Complex(real: 3)
Complex(real: 3, imaginary: 4).magnitude()

// Structs & Inmutabiildad
// Por defecto, todo en una struct es inmutable
struct Point {
    var x : Double
    var y : Double
    
    mutating func moveTo(x: Double, y: Double){
        self.x = x
        self.y = y
    }
}

// Structs NUNCA se comparte
var x1 : Int = 32
var x2 = x1
x1 = 0

// Structs NO tienen Herencia


//: [Next](@next)
