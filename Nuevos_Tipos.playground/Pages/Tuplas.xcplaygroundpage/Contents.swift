//: [Previous](@previous)
//: Lista de distintos tipos pegados uno detrás del otro
var httpResponse = ("OK", 200)
dump(type(of: httpResponse))
httpResponse = ("Internal Server Error", 500)
httpResponse = ("Enhance your calm", 420)
httpResponse.0
httpResponse.1

//: Función con más de un valor con tuplas
func intDiv (_ a: Int, _ b: Int) -> (cociente: Int, resto: Int) {
    return ((a / b), (a % b))
}
intDiv(3, 2)

// Un servidor Web que recibe un request y devuelve un response
typealias HTTPStatus = (code: Int, text: String)
typealias HTTPRequest = String
typealias HTTPResponse = (body: String, status: HTTPStatus)

func httpServer(request: HTTPRequest) -> HTTPResponse {
    // Habría que poner el código de verdad
    return ("It Worked!", (200, "OK"))
}

let response = httpServer(request: "index.html")
dump(response)

// Se utiliza "Pattern Matching" para "desemsamblar" la tupla en varias variables

let (cociente, resto) = intDiv(5, 2)
dump(cociente)
dump(resto)

let (_, status) = httpServer(request: "index.html")

// Se extrae el código
let (code, _) = status
dump(code)

// Tuplas de N elementos
// A la tupla de N-Elementos se le llama n-Tupla

(3, 4, "Cersei") // 3-tupla
(3, 4)           // 2-tupla
(3)              // 1-tupla, no existe
()               // 0-tupla, existe

// La cero tupla significa la nada. Es como void en otros lenguajes.
// Una función que no devuelve nada, en realidad devuelve ().

// Estas funciones son exactamente iguales
func f(a: Int){
    print(a)
}

func h(a: Int) -> () {
    print(a)
}

var nothing = f(a: 4)
nothing = h(a: 4)


//: [Next](@next)