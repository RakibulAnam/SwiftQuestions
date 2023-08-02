



/*
 
 
 Swift Uses Automatic Reference Counting to manage Apps memory, In allocates a memory space for class instnces and its values, it also frees up memory when those instances are not used
 
 ARC does not deallocated memory for any instances that are in use. It does it by keeping track of instances, properties and methods that are being referenced and used.
 
 
 
 STRONG REFERENCE
 Whenever we instantiate a class inside a variable it creates a "STRONG" reference as it keeps a strong hold of the instance and doesnt allows it to be deallocated as long as the strong reference remains
 
 
 
 
 
 
 
 
 
 
 */

//MARK: - STRONG REFERENCE
class StrongReference{
    var name : String
    
    init(name: String) {
        self.name = name
    }
}

var strongRef = StrongReference(name: "Rohid")



