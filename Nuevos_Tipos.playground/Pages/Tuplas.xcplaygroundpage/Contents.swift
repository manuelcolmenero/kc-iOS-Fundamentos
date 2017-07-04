
// Creando nuevos tipos
/*:
 * Tuplas
 * Structs
 * Clases
 * Enums
 */

// Tuplas
// Lista de distintos tipos pegados uno detrás del otro
var httpResponse = ("OK", 200)
dump(type(of: httpResponse))
httpResponse = ("Internal Server Error", 500)
httpResponse = ("Enhance your calm", 420)
httpResponse.0
httpResponse.1

// Devolver más de un valor con tuplas
func intDiv (_ a: Int, _ b: Int) -> (Int, Int) {
    return ((a / b), (a % b))
}
intDiv(3, 2)
