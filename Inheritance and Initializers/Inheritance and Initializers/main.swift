

class Vehicle{
    
    init(brand : String, year :String) {
        self.brand = brand
        self.year = year
    }
    
    var brand : String
    var year : String
    
}


class Car : Vehicle{
    
    let model : String
    
    init(model: String, brand : String, year : String) {
        self.model = model
        super.init(brand: brand, year: year)
    }
   
}


var car = Car(model: "R8", brand: "Audi", year: "2023")

print(car.model)
print(car.brand)
print(car.year)

