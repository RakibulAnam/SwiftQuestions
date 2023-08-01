


struct Temperature {
    
    let celsius : Int
    
    init(celsius: Int) {
        self.celsius = celsius
    }
}

extension Temperature{
    
    var fahrenheit : Int{
        var convert = ( Float(celsius) * (9/5) ) + 32
        return Int(convert)
    }
    
}



let temperature = Temperature(celsius: 10)

print(temperature.fahrenheit)



