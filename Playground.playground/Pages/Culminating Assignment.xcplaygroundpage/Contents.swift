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

/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

let scale = 5
let diag = sqrt(2)*Double(scale)
let diagonal = Int(sqrt(2)*Double(scale))
//t.drawSelf()

canvas.highPerformance = true

//function to draw 1 set of squares
func drawSquares() {
    // draw bottom left square

    for _ in 1...4{
        t.forward(steps: 10 * scale)
        t.left(by: 90)
    }
    //draw angles in square
    //middle line
    //get into position
    t.penUp()
    t.forward(steps: 10*scale)
    t.left(by: 135)
    //draw line
    t.penDown()
    t.forward(steps: 10 * diagonal)
    //bottom line
    t.penUp()
    t.left(by: 135)
    t.forward(steps: 5 * scale)
    t.left(by: 45)
    t.penDown()
    t.forward(steps: 5 * diagonal)
    //top line
    t.penUp()
    t.left(by: 45)
    t.forward(steps: 5*scale)
    t.left(by: 90)
    t.forward(steps: 5*scale)
    t.left(by: 45)
    t.penDown()
    t.forward(steps: 5*diagonal)

    // get into position to draw next box
    t.penUp()
    t.left(by: 45)
    t.forward(steps: 5*scale)
    t.left(by: 180)

    //draw top left square
    t.penDown()
    for _ in 1...2{
        t.forward(steps: 10 * scale)
        t.left(by: 90)
    }
    t.penUp()
    t.forward(steps: 10 * scale)
    t.left(by: 90)
    t.penDown()
    t.forward(steps: 10 * scale)
    t.left(by: 90)
    
    //draw diagonals
    //draw middle line
    t.penUp()
    t.left(by: 45)
    t.penDown()
    t.forward(steps: 10*diagonal)
    //bottom line
    t.penUp()
    t.right(by: 135)
    t.forward(steps: 5*scale)
    t.right(by: 45)
    t.penDown()
    t.forward(steps: 5*diagonal)
    //top line
    t.penUp()
    t.right(by:45)
    t.forward(steps: 5*scale)
    t.right(by: 90)
    t.forward(steps:5*scale)
    t.right(by: 45)
    t.penDown()
    t.forward(steps: 5*diagonal)


    //draw bottom right square
    //get into position
    t.penUp()
    t.right(by: 45)
    t.forward(steps: 5*scale)
    t.right(by: 90)
    t.forward(steps: 20*scale)
    t.left(by: 90)

    //draw box
    t.penDown()
    for _ in 1...4{
        t.forward(steps: 10 * scale)
        t.left(by: 90)
    }

    //draw diagonals
    //draw middle line
    t.penUp()
    t.left(by: 45)
    t.penDown()
    t.forward(steps: 10*diagonal)
    //bottom line
    t.penUp()
    t.right(by: 135)
    t.forward(steps: 5*scale)
    t.right(by: 45)
    t.penDown()
    t.forward(steps: 5*diagonal)
    //top line
    t.penUp()
    t.right(by:45)
    t.forward(steps: 5*scale)
    t.right(by: 90)
    t.forward(steps:5*scale)
    t.right(by: 45)
    t.penDown()
    t.forward(steps: 5*diagonal)

    // draw top right square
    //get into position
    t.penUp()
    t.left(by: 135)
    t.forward(steps: 5*scale)
    t.left(by: 180)

    //draw box
    t.penDown()
    for _ in 1...2{
        t.forward(steps: 10 * scale)
        t.left(by: 90)
    }
    t.penUp()
    t.forward(steps: 10 * scale)
    t.left(by: 90)
    t.penDown()
    t.forward(steps: 10 * scale)
    t.left(by: 90)
    //draw angles in square
    //middle line
    t.penUp()
    t.forward(steps: 10*scale)
    t.left(by: 135)
    t.penDown()
    t.forward(steps: 10 * diagonal)
    //bottom line
    t.penUp()
    t.left(by: 135)
    t.forward(steps: 5 * scale)
    t.left(by: 45)
    t.penDown()
    t.forward(steps: 5 * diagonal)
    //top line
    t.penUp()
    t.left(by: 45)
    t.forward(steps: 5*scale)
    t.left(by: 90)
    t.forward(steps: 5*scale)
    t.left(by: 45)
    t.penDown()
    t.forward(steps: 5*diagonal)

    //get into position
    t.penUp()
    t.left(by: 45)
    t.forward(steps: 15*scale)
    t.left(by: 180)
    t.penDown()

 
}




// draw first column
for _ in 1...4{
    drawSquares()
}




//repeat first column
for _ in 1...3{
    
    //get into position for next row
    t.penUp()
    t.forward(steps: 20*scale)
    t.right(by: 90)
    t.forward(steps: 80*scale)
    
    // correction
    t.backward(steps: 8)
    t.left(by: 90)
    t.penDown()

        for _ in 1...4{
            drawSquares()
        }
}

//draw line to complete top
t.penUp()
t.forward(steps: 20*scale)
t.left(by: 180)
t.penDown()
t.forward(steps: 80*scale)


canvas.highPerformance=false




