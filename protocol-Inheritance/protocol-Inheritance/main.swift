


protocol Drawable{
    func draw()
}

protocol Resizeable: Drawable{
    func resize()
}

class Shape : Resizeable{
    // as Shape is conforming to Resizeable it has to Conform to Drawable as, Resizable inherits form drawable
    func resize() {
        print("Resize from Shape")
    }
    
    func draw() {
        print("Drwa form shape")
    }
    
    
}


let shape = Shape()

shape.resize()
