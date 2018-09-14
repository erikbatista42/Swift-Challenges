import UIKit
// Challenge 2:

// Write a program that prints the powers of 2 that are less than or equal to N

func powersOfTwo(number: Int) { // Makes a function called power of two. This function takes a number from the user and multiplies it by the same number  to get the power of 2 of that number the user just put
    
var defaultNum = 0 // starting number
    while (defaultNum*defaultNum) <= number { // while 0 * 0 is less than the number chosen, print the powers of two default number
        print(defaultNum*defaultNum)
        defaultNum += 1 // increment defaultNum by one
    }
    
    
}

powersOfTwo(number: 99) // calls the function and you have to insert an argument ( a number )


