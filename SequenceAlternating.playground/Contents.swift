// ALTERNATE SEQUENCE CHALLENGE
func alternateSequence(number: Int) {
    // creates two empty arrays
    var myArray = [Any]()
    var secondArray = [Any]()
    // add all numbers in the  number the argument to the my array
    for theNumbers in 1...number {
        myArray.append(theNumbers)
    }
    // adds all the numbers in the number argument
    for u in 1...number {
        // appends the numbers that is iterating then the index current number - 1
        secondArray.append(myArray[u - 1])
        // appends the numbers to another array. The item that is being appended is:
        // my array subscripting the number of the amount of elements myArray has - whatever current item is in the loop.
        secondArray.append(myArray[myArray.count - u])
    }
    print(secondArray.dropLast(number))
}
alternateSequence(number: 30) // calls the functions with number argument value 30. ( or any number you want)
