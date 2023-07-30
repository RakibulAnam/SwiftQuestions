


func swapTwoValues<T>(n1:T, n2:T){
    
    print("N1 is \(n1) and n2 is \(n2)")
    
    var c : T
    var a = n1
    var b = n2
    
    c = a
    a = b
    b = c
    
    print("After swap")
    print("")
    print("N1 is \(a) and n2 is \(b)")
    
}

// With String
swapTwoValues(n1: 10, n2: 24)

//With Int
swapTwoValues(n1: "Rohid", n2: "MOhit")

