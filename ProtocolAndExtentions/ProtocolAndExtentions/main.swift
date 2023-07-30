
protocol Shape{
    
    func calculateArea()
}

class Rectangle : Shape{
    func calculateArea() {
        print("Conforming to Shape Protocol")
    }
    
    //Overwritting the extention function
    func getDescription(){
        print("Decription From Rectangle Class")
    }
}

extension Shape{
    func getDescription() {
        print("Default Decription From Extention of Shape")
    }
}

let rectAngle = Rectangle()

rectAngle.calculateArea()

rectAngle.getDescription()

