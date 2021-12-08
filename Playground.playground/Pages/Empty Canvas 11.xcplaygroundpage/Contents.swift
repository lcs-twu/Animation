//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
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
//canvas.translate(to: Point(x: canvas.width / 2,
//                           y: canvas.height / 2))



/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

// starset
canvas.highPerformance = true
var x = 0
for i in 1...25{
    x = x+1
    if x == 8{
        canvas.defaultLineWidth = x + 2
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: Double(165 + x), startAngle: 180, endAngle: 270)
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: Double(165 + x), startAngle: 340, endAngle: 50)
    }else if x == 24{
        canvas.defaultLineWidth = x - 4
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: Double(165 + x), startAngle: 210, endAngle: 310)
        print(x)
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: Double(165 + x), startAngle: 0, endAngle: 70)
    }else{
        canvas.defaultLineWidth = 5
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: 165, startAngle: 150, endAngle: 230)
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: 165, startAngle: 320, endAngle: 30)
        canvas.defaultLineWidth = 30
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: 215, startAngle: 220, endAngle: 90)
    }
}


canvas.highPerformance = false








// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

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
