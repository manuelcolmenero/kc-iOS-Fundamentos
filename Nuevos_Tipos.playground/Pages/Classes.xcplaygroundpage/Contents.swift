//: [Previous](@previous)

import AppKit

class AnonymousBook  {
    
    let title : String
    
    init(title : String) {
        self.title = title
    }
}

// En swift, una clase puede tener 1 ó 0 superclases
class Book : AnonymousBook {
    
    let authors : [String]
    
    // Inicializador designado. Sólo se pueden crear en declaraciones de clase
    init( title : String, authors : [String] ) {
        // Lo primero es iniicializar las propiedades de la clase
        self.authors = authors
        
        // Una vez inicializadas las propiedades se llama a super
        super.init(title: title)
    }
}

// Inicializadores de conveniencia. Sólo se pueden crear en extensiones
extension Book {
    convenience init(title: String, author: String) {
        self.init(title: title, authors: [author])
    }
}

// Clases finales. Nunca existirá una clase que la extienda u genere subclases
final class BookCharacter {
    let name : String
    let book : Book
    
    init(name : String, book : Book) {
        (self.name, self.book) = (name, book)
    }
}

// Protocolos en clases: Igual que en Structs
extension BookCharacter : CustomStringConvertible {
    var description : String {
        get {
            return "<\(type(of:self)): \(name). Appears in \(book.title)>"
        }
    }
}

// Sobreescritura de métodos

class MyView : NSView {
    override func viewDidHide() {
        super.viewDidHide()
        
        // Se realiza el código propio
    }
}




//: [Next](@next)
