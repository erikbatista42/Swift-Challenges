/*:
 ![Make School Banner](./swift_banner.png)
 # Repeating Code

 ## A quick intro to "loops"

 Now that you've rewritten your polygon functions a few times, you may have started to see a general pattern for drawing polygons. Grab your pen and paper again, let's see if we can reduce the number of lines of code we are using.

 This time, see if you can rewrite each of your draw functions (`drawTriangle`, `drawSquare`, `drawPentagon`, and `drawHexagon`) so that they only reference `move` and `rotate` once each. How can you do this? We're going to add a new tool to your pseudocode toolbox: repeat _x_ times.

 If you were to write:

    repeat 4 times
        move 10

 we would expect it to move a total of 40 units (10 units at a time).

 - callout(Plan your code): As usual, write it down then "run the code" yourself by following the directions as you hopefully draw out the polygon.

 ## Looking good?

 Time to translate this pseudocode into Swift! In Swift, the following pseudocode:

    repeat 4 times
        move 10

 would become:

    for _ in 1...4 {
        move(10)
    }

 We'll go further into the details of this _for-loop_ syntax in later exercises. Right now, all you need to know is that you can generalize it as this:

    for _ in 1...numberOfTimes {
        // "for-loop body"
        // code repeated numberOfTimes goes here
    }

 Like function bodies, the for-loop's body is enclosed in curly braces. Also, like function bodies, we indent an extra time each time we open a curly brace!

 ### Go for it!

 - callout(Challenge): Now that you know how to implement "for-loops" (repeat a few lines of code), reimplement your `drawTriangle`, `drawSquare`, `drawPentagon`, and `drawHexagon` methods below. Make sure they are still resizeable and be sure to test them out!

 */
// Draw Square
//for i in 1...4 {
//    func drawSquare(sideLength: Int) {
//        move(steps: sideLength)
//        rotateNinety()
//    }
//    drawSquare(sideLength: 50)
//}

// Draw Triangle
//rotate(degrees: -45)
//move(steps: 75)
//for i in 1...2 {
//    func drawTriangle(sideLength: Int) {
//        rotate(degrees: 135)
//        move(steps: 100)
//    }
//    drawTriangle(sideLength: 75)
//}


// Draw Pentagon
//rotate(degrees: 90)
//move(steps: 70)
//for i in 1...4 {
//    func drawPentagon(sideLength: Int) {
//        rotate(degrees: 70)
//        move(steps: sideLength)
//    }
//    drawPentagon(sideLength: 70)
//}


// Draw Hexagon
//rotate(degrees: 90)
//move(steps: 100)
//for i in 1...5 {
//func drawHexagon(sideLength: Int) {
//    rotate(degrees: 60)
//    move(steps: sideLength)
//    }
//    drawHexagon(sideLength: 100)
//}





/*:

 - callout(Hint): Your triangle `drawTriangle` function should use `1...3` in the _for-loop_ syntax above. Your `drawSquare` function should use `1...4`

 */
//: [Previous](@previous) | [Next](@next)

















































//: ### This is setup code to make the live visualization work!
Pen.delay = 1
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
