//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics
import Darwin

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 40, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

// frame of the triangle
p.penColor = .black
p.setPenSize(to: 2)
p.goto(dx: -160, dy: 200)
p.turn(degrees: 15)
for i in 1 ... 2 {
    p.addLine(distance: 310)
    p.turn(degrees: -90)
    p.addLine(distance: 190)
    p.turn(degrees: -90)
}

print(p.currentPosition())
for i in 1 ... 5 {
    p.turn(degrees: -90)
    p.goto(dx: 30, dy: 8)
    p.addLine(distance: 188)
    p.turn(degrees: 180)
    p.goto(dx: 30, dy: 8)
    p.addLine(distance: 188)
    p.turn(degrees: -90)
}

p.goToOrigin()
p.goto(dx: -150, dy: 168)
for i in 1 ... 4 {
    p.addLine(distance: 308)
    p.goto(dx: 8, dy: -30)
    p.turn(degrees: 180)
    p.addLine(distance: 308)
    p.turn(degrees: -180)
}

// place will have to be black
p.goToOrigin()
p.goto(dx: 90, dy: 104)
p.turn(degrees: -133)
p.addLine(distance: 44)

p.goToOrigin()
p.goto(dx: 125, dy: 208)
p.turn(degrees: -2)
p.addLine(distance: 130)



p.turn(degrees: 30)



// cubes dark side
// p.goToOrigin()
// p.goto(dx: 119, dy: 240)
// p.beginfill()
// p.turn(degrees: 90)
// p.drawTo(dx: 0, dy: -30)
// p.drawTo(dx: -150, dy: -40)
// p.drawTo(dx: 0, dy: 30)
// p.drawTo(dx: 150, dy: 40)
// p.endfill()

p.goToOrigin()
p.goto(dx: -75, dy: 124)
p.beginFill()
p.turn(degrees: 90)
p.drawTo(dx: 0, dy: -32)
p.drawTo(dx: 8, dy: 2)
p.drawTo(dx: 8, dy: -31)
p.drawTo(dx: 120, dy: 33)
p.drawTo(dx: 65, dy: 113)
p.drawTo(dx: 1, dy: 32)
p.drawTo(dx: -15, dy: 3)
p.drawTo(dx: -45, dy: -30)
p.drawTo(dx: -20, dy: 10)
p.drawTo(dx: -60, dy: -50)
p.drawTo(dx: -20, dy: 40)
p.drawTo(dx: -40, dy: -50)
p.endFill()

// white cube
p.goToOrigin()
p.penColor = .white
p.setPenSize(to: 7)
p.goto(dx: -20, dy: 150)
p.turn(degrees: -120)
p.addLine(distance: 30)
p.turn(degrees: 90)
p.addLine(distance: 30)
p.turn(degrees: 90)
p.addLine(distance: 30)
p.turn(degrees: 90)
p.addLine(distance: 30)
p.turn(degrees: 180)
p.addLine(distance: 5)
p.turn(degrees: -90)
p.addLine(distance: 30)
p.turn(degrees: 90)
p.addLine(distance: 5)
p.turn(degrees: 90)
p.addLine(distance: 30)
p.turn(degrees: -90)
p.addLine(distance: 5)
p.turn(degrees: -90)
p.addLine(distance: 30)
p.turn(degrees: 270)
p.addLine(distance: -10)
p.turn(degrees: -90)
p.addLine(distance: 30)
p.turn(degrees: 90)
p.addLine(distance: 5)
p.turn(degrees: 90)
p.addLine(distance: 30)

p.goToOrigin()
p.goto(dx: -20, dy: 150)
p.turn(degrees: 135)
p.addLine(distance: 30)
p.turn(degrees: -45)
p.addLine(distance: 30)
p.turn(degrees: -135)
p.addLine(distance: 30)
p.turn(degrees: -45)
p.addLine(distance: 8)
p.turn(degrees: -135)
p.addLine(distance: 30)
p.turn(degrees: 135)
p.addLine(distance: 8)
p.turn(degrees: 45)
p.addLine(distance: 30)
p.turn(degrees: -45)
p.addLine(distance: 8)
p.turn(degrees: -135)
p.addLine(distance: 30)

p.goToOrigin()
p.goto(dx: 35, dy: 143)
p.turn(degrees: -135)
p.addLine(distance: 30)
p.turn(degrees: -45)
p.addLine(distance: 30)
p.turn(degrees: 180)
p.addLine(distance: 8)
p.turn(degrees: 45)
p.addLine(distance: 30)
p.turn(degrees: -45)
p.addLine(distance: 8)
p.turn(degrees: -135)
p.addLine(distance: 30)
p.turn(degrees: 135)
p.addLine(distance: 8)
p.turn(degrees: 45)
p.addLine(distance: 30)



// points for the black
// p.goToOrigin()
// var black: [Point] = []
// black.append(Point(x: , y: ))
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
