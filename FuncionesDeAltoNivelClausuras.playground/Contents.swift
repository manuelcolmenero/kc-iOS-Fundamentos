//: #Funciones como valores

// Funciones como valores de retorno (de otra función)

// Siempre que se use "IntToInt" equivale a una función que recibe un "Int" y devuelve un "Int"
typealias IntToInt = (Int) -> Int

// Función que recibe un Int y devuelve una función IntToInt
func adder(n: Int) -> IntToInt{
    func f(x: Int) -> Int{
        return x + n
    }
    
    return f
}

let h = adder(n: 42)
h(1)


// Funciones como parametros de entrada
func apply(f: IntToInt, n: Int) -> Int{
    return f(n)
}

apply(f: h, n: 99)


// Sintaxis de clausuras
func f(_ n: Int) -> Int{
    return n + 1
}

// es 100% equivalente a:
let f1 = {(n: Int) in return n + 1 }

f(8)
f1(8)

// Las funciones al ser tipos como cualquier otro,
// se pueden introducir en colecciones
let funtions = [f, f1, h, adder(n: 42)]

for fn in funtions{
    dump(fn(42))
}

// la sintaxis abreviada de clausuras
// la primera función define la forma del resto (entrada Int - salida Int)
let clausuras = [f,
                 {(n: Int) in return n + 1}, // 100% explícita
                 {n in return n * 3},        // El tipo de parámetro se infiere
                 {n in n * 6},               // Si el cuerpo sólo tiene una linea, no hace falta return
                 {$0 + 99}                   // $0 indica el primer parámetro. Acepta un entero y devuelve ese entero mas noventa y nueve
]

// La sintáxis ultra-minimalista, se usa mucho en Swift, especialmente como 
// clausuras de finalización, es decir, callbacks
let evens = [8, 2, 12, 6, 10, 4]
let x = evens.sorted(by:{(a: Int, b: Int) in a < b})

// Sintáxis de la clausura que cuelga
let y = evens.sorted{(a: Int, b: Int) -> Bool in
    return (a < b)
}

dump(x)
dump(y)

// Operaciones sobre colecciones con programación funcional
// Clásicos de FP: map, filter, flatMap

// Map: Iteración para Chuck Norris
var result = [Int]()
for element in evens {
    result.append(element * 4)
}
result

// Iteración Map simplificada
evens.map {$0 * 4}

// Filter: Elimina ciertos elementos de un array
result = evens.filter {$0 > 6}
result

// FlatMap: un map que se salta los nil
let intsOrNil : [Int?] = [5, 2, nil, 7, 1, nil]

result = intsOrNil.flatMap{ $0?.hashValue }
result

result = intsOrNil.flatMap{ $0 }
result
