


struct Counter{
    
    
    var count = 0
    
    
    
    mutating  func increment(){
        count += 1
    }
    
    mutating func reset(){
        count = 0
    }
    
    
}


var counter = Counter()

print(counter.count)

counter.increment()
counter.increment()
counter.increment()
counter.increment()
counter.increment()

print(counter.count)

counter.reset()

print(counter.count)
