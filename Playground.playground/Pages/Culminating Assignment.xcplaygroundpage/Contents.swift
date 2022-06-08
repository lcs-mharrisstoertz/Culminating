//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
canvas.translate(to: Point(x: 100, y: 100))
canvas.drawAxes(withScale: true, by: 20, color: .black)
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

let scale = 5
let diagonal = Int(sqrt(2)*Double(scale))
//t.drawSelf()

t.penDown()

func whereAmI() {
    t.drawSelf()
    t.currentHeading()
    t.currentPosition()
}

// draw square

for _ in 1...4{
    t.forward(steps: 10 * scale)
    t.left(by: 90)
}
//draw angles in square
//middle line
t.forward(steps: 10*scale)
t.left(by: 135)
t.forward(steps: 10 * diagonal)
//bottom line
t.left(by: 135)
t.forward(steps: 5 * scale)
t.left(by: 45)
t.forward(steps: 5 * diagonal)
//top line
t.left(by: 45)
t.forward(steps: 5*scale)
t.left(by: 90)
t.forward(steps: 5*scale)
t.left(by: 45)
t.forward(steps: 5*diagonal)

// get into position to draw next box
t.left(by: 45)
t.forward(steps: 5*scale)
t.left(by: 180)

//draw second box
for _ in 1...4{
    t.forward(steps: 10 * scale)
    t.left(by: 90)
}

//draw diagonals
//draw middle line
t.left(by: 45)
t.forward(steps: 10*diagonal)
//bottom line
t.right(by: 135)
t.forward(steps: 5*scale)
t.right(by: 45)
t.forward(steps: 5*diagonal)
//top line
t.right(by:45)
t.forward(steps: 5*scale)
t.right(by: 90)
t.forward(steps:5*scale)

whereAmI()

