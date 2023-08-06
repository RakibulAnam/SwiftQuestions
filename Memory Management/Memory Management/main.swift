



/*
 
 
 Swift Uses Automatic Reference Counting to manage Apps memory, In allocates a memory space for class instnces and its values, it also frees up memory when those instances are not used
 
 ARC does not deallocated memory for any instances that are in use. It does it by keeping track of instances, properties and methods that are being referenced and used.
 
 
 
 STRONG REFERENCE
 Whenever we instantiate a class inside a variable with var/let it creates a "STRONG" reference as it keeps a strong hold of the instance and doesnt allows it to be deallocated as long as the strong reference remains
 
 
 WEAK REFERENCE
 
 weak reference are set as nil varibales and will deinitialize right after initializing "weak" keyword is written before initializing the variable.
 
 weak references ar nil until they refer to a strong reference. if the strong reference they are refereong becomes nil. they become nil too.
 
 
 UNOWNED REFERENCE
 
    It does not keep a strong hold on the instance it refers to. Similar like a weak reference.

 Unowned reference always have a value. ARC never sets value of unowned reference to nil. Unowned reference defined using nonoptional types.
 
 

 
 
 
 
 
 */


//MARK: - STRONG REFERENCE

import Foundation

class Customer {
    
    let udid: String
    let name: String
    
    init(udid: String, name: String) {
        self.udid = udid
        self.name = name
        
        print("\(udid) initialized")
    }
    
    deinit {
        print("\(udid) deinitialized")
    }
    
}

// MARK: - Global strong reference. It'll be free up at the end of programm cycle.
var customer: Customer? = nil
customer = Customer(udid: "global reference", name: "Jo Mock")
/*
 print: global reference initialized
 */
customer = nil

// MARK: - Functin local reference. It'll be free up at the end of function.
func printCustomer() {
    let customer = Customer(udid: "function printCustomer", name: "Jo Mock")
    /*
     print: function printCustomer initialized
     */
    print("print customer: \(customer.udid)")
    /*
     print: function printCustomer deinitialized
     */
}

printCustomer()

// MARK: - Loop local reference. It'll be free up at the end of loop cycle.
for i in 0..<5 {
    _ = Customer(udid: "loop \(i)", name: "Jo Mock")
    /*
     print: loop {i} initialized
     print: loop {i} deinitialized
     */
}

/*
 print: global reference deinitialized
 */




// MARK: - strong reference counting
var customer1stRef: Customer? = nil
var customer2ndRef: Customer? = nil

customer1stRef = Customer(udid: "1st", name: "Maxim")
/*
 print: 1st initialized
 */
customer2ndRef = customer1stRef
customer1stRef = nil

/*
 Customer class instance don't deallocated after nil set to customer1stRef.
 That happened because it has a strong reference in customer2ndRef
 */

customer2ndRef = nil
/*
 print: 1st deinitialized
 */



//MARK: - WEAK REFERENCE

// MARK: - weak reference
weak var weakCustomer1stRef: Customer? = nil
weak var weakCustomer2stRef: Customer? = nil

weakCustomer1stRef = Customer(udid: "weak 1", name: "Jacob")
/*
 print: weak 1 initialized
 print: weak 1 deinitialized
 */

/*
 That is deallocated right after initialization because haven't any strong reference.
 weakCustomer1stRef is nil
 */

var strongCustomerRef: Customer? = Customer(udid: "strong 1", name: "Klo")
/*
 strong 1 initialized
 */
weakCustomer1stRef = strongCustomerRef
weakCustomer2stRef = weakCustomer1stRef

print("weak 1st: \(String(describing: weakCustomer1stRef))")
print("weak 2nd: \(String(describing: weakCustomer2stRef))")
/*
 Both weak references are not nil
 */

strongCustomerRef = nil
/*
 print: strong 1 deinitialized
 */
print("weak 1st: \(String(describing: weakCustomer1stRef))")
print("weak 2nd: \(String(describing: weakCustomer2stRef))")
/*
 strongCustomerRef is setup to nil
 Both weak references will be setup to nil at runtime
 */



//MARK: - Unowned REFERENCE


class Owner {
    
    let udid: String
    let iin: String
    let name: String
    var business: Business!
    
    init(udid: String, iin: String, name: String) {
        self.udid = udid
        self.iin = iin
        self.name = name
    }
    
    deinit {
        print("owner was deitialized")
    }
    
}

class Business {
    
    let title: String
    unowned var owner: Owner
    
    init(title: String, owner: Owner) {
        self.title = title
        self.owner = owner
    }
    
    deinit {
        print("business was deitialized")
    }
    
}

var owner: Owner? = Owner(udid: "1st owner", iin: "1", name: "Mike")
owner!.business = Business(title: "1st Corp", owner: owner!)
/*
 Do some work with owner
 */
owner = nil
/*
 print: owner was deitialized
 print: business was deitialized
 */


