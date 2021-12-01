//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 800
let preferredHeight = 1200
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

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
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */

// Begin writing your code below (you can remove the examples shown)

// start to draw the panda

// draw the panda's body, hands, and foot
canvas.highPerformance = true
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: -130, y: -200), width: 200, height: 80)
canvas.drawEllipse(at: Point(x: 130, y: -200), width: 200, height: 80)
canvas.drawEllipse(at: Point(x: -60, y: -400), width: 80, height: 200)
canvas.drawEllipse(at: Point(x: 60, y: -400), width: 80, height: 200)
canvas.drawEllipse(at: Point(x: 0, y: -230), width: 240, height: 340)
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 0, y: -230), width: 235, height: 335)

// draw the panda's ears
canvas.lineColor = .black
canvas.defaultLineWidth = 35
canvas.drawCurve(from: Point(x: -100, y: 52), to: Point(x: -30, y: 113), control1: Point(x: -150, y: 100), control2: Point(x: -80, y: 160))
canvas.drawCurve(from: Point(x: 100, y: 52), to: Point(x: 30, y: 113), control1: Point(x: 150, y: 100), control2: Point(x: 80, y: 160))


// start to draw the panda's face
canvas.lineColor = .black
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 0,y: 0), width: 240, height: 240)
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x:0,y:0), width: 235, height: 235)


// draw the panda's eyes
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: -40, y: 40), width: 35, height: 60)
canvas.drawEllipse(at: Point(x: 40, y: 40), width: 35, height: 60)
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: -37, y: 23), width: 20, height: 20)
canvas.drawEllipse(at: Point(x: 37, y: 23), width: 20, height: 20)

// draw the panda's nose and mouth
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 0, y: -25), width: 60, height: 35)
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 0, y: -25), width: 55, height: 30)
canvas.defaultLineWidth = 2
canvas.drawCurve(from: Point(x: -5, y: -42), to: Point(x: -45, y: -60), control1: Point(x: -10, y: -60), control2: Point(x: -33, y: -60))
canvas.drawCurve(from: Point(x: 5, y: -42), to: Point(x: 45, y: -60), control1: Point(x: 10, y: -60), control2: Point(x: 33, y: -60))

canvas.highPerformance = false
// value
for value in stride(from: 10,
                    through: 100,
                    by: 1){
    // change the color
    let currentColor = Color(
        hue: 140 + value,
        saturation: 80,
        brightness: 100,
        alpha: 100)
    canvas.lineColor = currentColor
    
    // draw the line
    canvas.defaultLineWidth = 5
    canvas.drawLine(from: Point(x: -500, y: 240 + value * 5),
                    to: Point(x: 500, y: 240 + value * 5))
}
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


