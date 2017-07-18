//: Generics



/*:
 Genéricos: Plansitllas de código que se completan en tiempo de compilación
 
 * Funciones genéricas
 * Clases genéricas
 * Estructuras & Enums genéricas
 * Protocolos genéricos: Se implementan de forma distintas. Requieren avanzado
 
 
 ## Funciones genéricas
 */

func swapInt( a: inout Int, b: inout Int){
    let aux = a
    a = b
    b = aux
    
}

var a = 3
var b = 2
(a, b)
swapInt(a: &a, b: &b)
(a, b)

// Versión genérica
// Se crea la función indicando que el tipo de elemento se recibirá
// en tiempo de ejecución
func swapAny<Element>( a: inout Element, b: inout Element){
    let aux = a
    a = b
    b = aux
}

var c = "Stark"
var d = "Lannister"
(c, d)
swapAny(a: &c, b: &d)
(c, d)


/*:
 Estructuras de datos genéricas: Class, Struct, Enum
 */

struct Pair <First, Second>{
    let first   : First
    let second  : Second
}

let p = Pair(first: 4, second: ["Valar", "Morgulis"])
p.first
p.second

// Poner restricciones a los tipos genéricos
// Se indica cualquier valor en el primer elemento
// Se indica cualquier valor en el segundo elemento siempre que sea hashable
struct HashPair<Value, Key : Hashable>{
    let value   : Value
    let key     : Key
}

struct Foo{}

// Error dado que Foo no implementa Hashable
// let h = HashPair(value: "Hash", key: Foo())

// Para más de una restricción, mejor usar sintaxis del Where. Ver libro

// Mezcla de genérico y específico
struct MixedPair<T>{
    let head    : Int
    let tail    : T
}

/*:
 ## Protocolos genéricos
 
 En vez de una variable de tipo (genérica) usa un "tipo asociado".
 
 Es nivel avanzado.
 */

protocol Bar{
    associatedtype Element
}




