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
canvas.translate(to: Point(x: canvas.width, y: canvas.height))
//draw a grid
canvas.drawAxes(withScale: true, by: 20, color: Color.black)
// Replace this comment with your first comment – what is the goal of the code you're about to write?
canvas.drawRectangle(at: Point(x: 50, y: 75), width: 100, height: 200)
let p =Pen(drawingUpon: canvas)

// where am I and what direction am I facing?
print(p.currentPosition())
print(p.currentHeading)

    // Chapel drawing
    
// draw frame

p.goto(dx: 260, dy: 0)
p.turn(degrees: 90)
p.addLine(distance: 380)
p.turn(degrees: 90)
p.addLine(distance: 520)
p.turn(degrees: 90)
p.addLine(distance: 680)
p.turn(degrees: 90)
p.addLine(distance: 520)
p.turn(degrees: 90)
p.addLine(distance: 300)

    // draw main building
p.goto(dx: -260, dy: 0)
p.turn(degrees: -90)
p.addLine(distance: 120)
p.turn(degrees: 90)
p.addLine(distance: 150)
p.drawTo(dx:140 , dy: -20)
p.goto(dx: 0, dy: -90)
p.drawTo(dx: -140, dy: -40)
p.goto(dx: 0, dy: 150)
p.drawTo(dx: -210 , dy: 220)
p.drawTo(dx:-40 , dy:-90)
p.goto(dx: -20, dy: 10)
p.drawTo(dx: 45 , dy:90)
p.goto(dx: 30, dy: 0)
p.drawTo(dx: 200, dy: -210)
p.drawTo(dx: 80, dy: -20)
p.drawTo(dx: 10, dy: 80)
p.drawTo(dx: 15, dy: -85)
p.drawTo(dx: 10, dy: -5)
p.drawTo(dx:20 , dy:70)
p.drawTo(dx: -40, dy: 0)
p.goto(dx: -5, dy: 20)
p.drawTo(dx: -80, dy:-10)
p.goto(dx: -210, dy: 160)
p.drawTo(dx: 245, dy: -155)

    // small building
p.goto(dx: -170, dy: -225)
p.drawTo(dx: -80, dy: -20 )
p.goto(dx: 80, dy: 20)
p.drawTo(dx: 0, dy: 130)
p.drawTo(dx: -80, dy: 20)
p.drawTo(dx: 0, dy: -170)
p.drawTo(dx: -140, dy:20 )
p.drawTo(dx: 0, dy: 140)
p.drawTo(dx: 50, dy: 110)
p.drawTo(dx: 90, dy: -100)
p.drawTo(dx: 5, dy: 20)
p.drawTo(dx: 75, dy: -20)
p.drawTo(dx: 0, dy: -20)
p.goto(dx: 0, dy: 20)
p.drawTo(dx: -90, dy: 120)
p.drawTo(dx: -90, dy:20 )
p.drawTo(dx: -60, dy: -140)
p.drawTo(dx: 20, dy: -10)
p.goto(dx: -20, dy: 10)
p.goto(dx: 60, dy: 140)
p.drawTo(dx: 105, dy: -120)
p.goto(dx: -105, dy: 120)
p.drawTo(dx: 0, dy: 25)
p.goto(dx: 5, dy: -10)
p.drawTo(dx: -10, dy: 0)
p.goto(dx: 25, dy: -115)
p.drawTo(dx: -30, dy: -65)
p.drawTo(dx: 30, dy: 65)
p.drawTo(dx: 40, dy: -50)
p.drawTo(dx: 0, dy: -120)
p.drawTo(dx: -70, dy: 10)
p.drawTo(dx: 0, dy: 95)
p.goto(dx: 190, dy: -125)
p.goto(dx: 40, dy: 0)
p.drawTo(dx: 0, dy: 90)
p.drawTo(dx: 40, dy: 0)
p.drawTo(dx: 0, dy: -90)

    //pathway
p.drawTo(dx: 40, dy: 0)
p.drawTo(dx: -20, dy: -10)
p.drawTo(dx: -30, dy: -20)
p.drawTo(dx: 0, dy: -10)
p.drawTo(dx: 120, dy: -20)
p.drawTo(dx: 70, dy: -10)
p.goto(dx: -280, dy: -230)
p.drawTo(dx: -30, dy: 80)
p.drawTo(dx: -50, dy: 60)
p.drawTo(dx: -160, dy: 50)
p.drawTo(dx: 0, dy: 70)
p.drawTo(dx: 180, dy: 10)
p.drawTo(dx: 50, dy: 10)
p.drawTo(dx: 60, dy: 20)


//add plants
p.goto(dx: -150, dy:-30 )
for i in 1 ... 3 {
    bush1()
    p.goto(dx: -30, dy: 0)
}
p.goto(dx: 380, dy: -40)
for i in 1 ... 3 {
    bush1()
    p.goto(dx: 30, dy: 0)
}

//bush

func bush1() {
    p.drawTo(dx: 0, dy: 20)
    p.drawTo(dx: 20, dy: 20)
    p.drawTo(dx: -20, dy: -20)
    p.drawTo(dx: -20, dy: 20)
    p.drawTo(dx: 10, dy: -10 )
    p.drawTo(dx: -10, dy: -10)
    p.drawTo(dx: 20, dy: 20)
    p.drawTo(dx: -10, dy: -10)
    p.drawTo(dx: 10, dy: -10)
    p.drawTo(dx: 20, dy: 0)
    p.drawTo(dx: -40, dy: -10)
}



// where am I and what direction am I facing?
print(p.currentPosition())
print(p.currentHeading)
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

