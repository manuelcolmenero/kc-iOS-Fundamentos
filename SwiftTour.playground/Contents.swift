// Valores, "bindings" & REPL

let answer = 40 + 2

// Siempre usar 'let' (inmutables) antes que 'var' (variables) para evitar errores no controlados de modificación de variables
var donnaMobile = "Escucha mi rugido"
donnaMobile = "Se acerca el invierno"

// Se puede definir de forma explicita el tipo de las variables
let name: String = "Jon Snow"

// Inferencia de tipos: común en lenguajes como Haskell, OCamel, F#, Kotlin, etc. Es decir, lenguajes funcionales con tipado estático
let name2 = "Tyrion Lannister"

// Un alias para un tipo
// typealias NombreNuevo = NombreViejo

typealias Integer = Int

let numSoldados : Integer = 42
dump(numSoldados)
type(of: numSoldados)

typealias Author = String
let grrm : Author = "George Raymond Richard Martin"

// Símbolo anónimo _
let _ = "Robb Stark"
let _ = "Stannis"
// Tanto Stannis como Robb, se han ido al pedo


// -------------
// Funciones
func add(x: Int, y: Int) -> Int {
    return x + y
}
add(x: 40, y: 2)

// Parámetros con nombres internos y externos
func fractionOf(numerator a: Double,
                denominator b: Double) -> Double {
    return a / b
}
fractionOf(numerator: 3.2, denominator: 42)

// Parámetros sin nombres externos
func add42(_ a: Int) -> Int {
    return a + 42
}
add42(4)
