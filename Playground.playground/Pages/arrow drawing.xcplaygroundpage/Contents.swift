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
let scale = 20
let diagonal = Int(sqrt(2)*Double(scale))
t.drawSelf()

// create arrow function
func drawArrow() {
    

    //draw arrow
    t.penDown()
    t.forward(steps: 4 * scale)
    t.right(by: 90)
    t.forward(steps: 2*scale)
    t.left(by: 135)
    t.forward(steps: 3*diagonal)
    t.left(by: 90)
    t.forward(steps: 3*diagonal)
    t.left(by: 135)
    t.forward(steps: 2*scale)
    t.right(by: 90)
    t.forward(steps: 4*scale)
    t.left(by: 90)
    t.forward(steps: 2*scale)
    
    
    // get into position for next arrow
    t.penUp()
    t.left(by: 180)
    t.forward(steps: 6 * scale)
    t.right(by: 90)
}

//get into position to start drawing
t.left(by: 90)
t.forward(steps: 2 * scale)
t.right(by: 90 )

//draw Arrow
for _ in 1...4 {
    drawArrow()
}

t.drawSelf()
t.currentPosition()
t.currentHeading()

//repeat rows

for _ in 1...4{
    //move pen to start new row
    t.penUp()
    t.forward(steps: 7 * scale)
    t.right(by: 90)
    t.forward(steps: 24 * scale)
    t.left(by: 90)
    for _ in 1...4 {
        drawArrow()
    }
}




t.drawSelf()
t.currentPosition()
t.currentHeading()


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
