//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 600
let preferredHeight = 800
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
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// MOVE ORIGIN TO THE MIDDLE OF CANVAS
canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))
//draw a grid
canvas.drawAxes(withScale: true, by: 20, color: Color.black)


let p = Pen(drawingUpon: canvas)

// where am I and what direction am I facing?
p.currentPosition()
p.currentHeading

//draw illusion

//frame
p.goto(dx: -100, dy: -100)
p.drawTo(dx: 200, dy: 0)
p.drawTo(dx: 0, dy: 200)
p.drawTo(dx: -200, dy: 0)
p.drawTo(dx: 0, dy: -200)
p.goto(dx: 100, dy: 100)

    //center hexagon
p.drawTo(dx: 40, dy: -20)
p.drawTo(dx: 0, dy: 40)
p.drawTo(dx: -40, dy: 20)
p.drawTo(dx: -40, dy: -20)
p.drawTo(dx: 0, dy: -40)
p.drawTo(dx: 40, dy: -20)
p.drawTo(dx: 40, dy: 20)
p.drawTo(dx: -40, dy: 20)
p.drawTo(dx: -40, dy: -20)
p.drawTo(dx: 40, dy: 20)
p.drawTo(dx: 0, dy: 40)

    //middle triangles
p.drawTo(dx: 80, dy: 0)
p.drawTo(dx: -40, dy: -20)
p.drawTo(dx: 0, dy: -40)
p.drawTo(dx: 40, dy: 60)
p.drawTo(dx: -40, dy: -60)
p.drawTo(dx: -40, dy: -60)
p.drawTo(dx: 0, dy: 40)
p.drawTo(dx: -40, dy: 20)
p.drawTo(dx: 40, dy: -60)
p.drawTo(dx: -40, dy: 60)
p.drawTo(dx: -40, dy: 60)
p.drawTo(dx: 40, dy: -20)
p.drawTo(dx: 40, dy: 20)
p.drawTo(dx: -80, dy: 0)

    //outer triangles
p.drawTo(dx: 80, dy: 0)
p.drawTo(dx: 0, dy: 40)
p.drawTo(dx: -25, dy: -40)
p.drawTo(dx: 50, dy: 0)
p.drawTo(dx: -25, dy: 40)
p.drawTo(dx: 0, dy: -80)
p.drawTo(dx: 80, dy: -40)
p.drawTo(dx: -25, dy: 40)
p.drawTo(dx: 25, dy: -40)
p.drawTo(dx: -55, dy: 0)
p.goto(dx: -50, dy: 0)
p.drawTo(dx: -55, dy: 0)
p.drawTo(dx: 40, dy: 20)
p.drawTo(dx: -40, dy: -20)
p.drawTo(dx: 25, dy: 40)


/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

