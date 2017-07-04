//: [Previous](@previous)

/*
 Extension: Mecanismo para:
 a) Añadir comportamiento a clase o struct pre-existente
 b) Modularizar clases o structs
 */

// Añadir comportamiento a una struct pre-existente
// MARK : - Init
extension Int {
    func invert() -> Int {
        return -self
    }
}
// a partir de aqui, todos los Ints, tienen ese método
42.invert()

/* 
 Esto no se puede hacer porque cambiaria el tamaño en memoria
extension Int {
    var a : Double = 0
}
 */

// Añadir comportamiento a una struct que se haya inventado
// por defecto tiene nivel Internal (que se ve en todo el módulo, la app completa)
struct Complex {
    let x : Double
    let y : Double
}

extension Complex{
    var magnitude : Double {
        get {
            return ((x * x) + (y * y)).squareRoot()
        }
    }
}

// Protocols: Muy similar a los interfaces de Java y los protocolos de ObjC

/*
 Swift está hecho a base de protocolos y se deben ver los siguientes:
 * CustomStringConvertible
 * Equatable
 * Hashable
 * Comparable
 */

extension Complex :  CustomStringConvertible {
    var description: String {
        return "(\(x) + \(y)i)"
    }
}

Complex(x: 23, y: -8)
4 == 5

extension Complex : Equatable {
    static func ==(lhs: Complex, rhs: Complex) -> Bool {
        return (lhs.x, lhs.y) ==  (rhs.x, rhs.y)
    }
}

let c1 = Complex (x: 3, y: -2)
let c2 = Complex (x: 0, y: 9)

c1 == c1
c1 == c2



// Protocolos con implementación por defecto


// Se crea un protocolo
protocol Answerable {
    var answer : Int {get}
}

// Implementación por defecto. Se ha de realizar en una extensión
extension Answerable {
    var answer : Int {
        return 42
    }
}

// A partir de ahora, cualquier tipo que adopte el protocolo Answerable, tendrá esa opción por defecto
extension String : Answerable {}

"What is the meaning of Life, the Universe, and everything?".answer

extension Complex : Answerable {
    var answer : Int {
        return 0
    }
}

c1.answer

















//: [Next](@next)
