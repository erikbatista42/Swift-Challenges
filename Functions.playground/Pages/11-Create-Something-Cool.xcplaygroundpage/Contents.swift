/*:
 ![Make School Banner](./swift_banner.png)
 # Create something cool
 
 - experiment: Use everything you learned to draw something awesome! See below for a few more functions you can use to bring your art to life!
 
 ## Drop and lift the pen
 
 - callout(Drop the pen): `penDown()`
 */
/*:
 - callout(Lift the pen): `penUp()`
 */
/*:
 - note: The pen starts out down.
 
 ## Moving the pen
 
 - callout(Move by a number of steps): `move(steps: Int)`
 */
/*:
 - callout(Move directly to coordinates): `moveTo(x: Int, y: Int)`
 */
/*:
 - callout(Rotate heading by an angle): `rotate(degrees: Int)`
 
 ## Change the pen
 
 - callout(Set color of pen): `setColor(red: Double, green: Double, blue: Double)`
 */
/*:
 - note: Each value should be between 0 and 1. eg. `setColor(red: 0.0, green: 0.0, blue: 0.0)` would change the pen to be black. `setColor(red: 1.0, green: 0.0, blue: 0.0)` would change the pen to be red.
 */
/*:
 - callout(Set thickness of pen): `set(thickness: Double)`
 
 */
//: [Previous](@previous)
/*:
 
 - callout(Challenge): Draw something awesome in the space below!
 
 */
setColor(color: .orange)
penUp()
moveTo(x: 25, y: 570)
penDown()
set(thickness: 50)
move(steps: 570)

setColor(color: .yellow)
penUp()
moveTo(x: 75, y: 570)
penDown()
set(thickness: 50)
move(steps: 570)

setColor(color: .blue)
penUp()
moveTo(x: 125, y: 570)
penDown()
set(thickness: 50)
move(steps: 570)
//
setColor(color: .magenta)
penUp()
moveTo(x: 175, y: 570)
penDown()
set(thickness: 50)
move(steps: 570)
//
setColor(color: .red)
penUp()
moveTo(x: 225, y: 570)
penDown()
set(thickness: 50)
move(steps: 570)

setColor(color: .green)
penUp()
moveTo(x: 275, y: 570)
penDown()
set(thickness: 50)
move(steps: 570)

setColor(color: .cyan)
penUp()
moveTo(x: 325, y: 570)
penDown()
set(thickness: 50)
move(steps: 570)





















































































//: This is setup code to make the live visualization work!
Pen.delay = 0.1
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
