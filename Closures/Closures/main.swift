



/*
 
 Closures are unamed functions that can be stored in a variable, used as a Function parameters. It does not need to be declared as a function using "func"
 keyword.
 
 */


let sumClosure = {(n1: Int, n2: Int) -> Int in return n1 + n2}

let result = sumClosure(10, 20)

print(result)
