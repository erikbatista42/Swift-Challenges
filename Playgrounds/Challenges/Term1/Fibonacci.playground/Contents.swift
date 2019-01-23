//: Playground - noun: a place where people can play

import UIKit



func fibbo(limit: Int) -> [Int] {
    
    var arrayOfNumbers = [Int]()
    
    var sum = 0
    var x = -1
    var y = 1
    
    
    for _ in 0..<limit {
        
        sum = x + y
        x = y
        y = sum
        
        arrayOfNumbers.append(sum)
    }
    
    print(arrayOfNumbers)
    
    return  arrayOfNumbers
    
}

fibbo(limit: 10)



















