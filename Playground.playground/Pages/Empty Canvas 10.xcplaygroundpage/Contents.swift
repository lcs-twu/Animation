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

// Show a grid


/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
//background
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
// Begin writing your code below (you can remove the examples shown)
for xValue in stride(from: 6, through: 406, by: 80){
    for yValue in stride(from: 6, through: 400, by: 80){
        canvas.highPerformance = true
    canvas.defaultLineWidth = 10
        if yValue-xValue == 0{
            canvas.lineColor = .white
        }else{
            canvas.lineColor = .blue
        }
    canvas.drawLine(from: Point(x: xValue, y: yValue), to: Point(x: 54 + xValue, y: yValue))
    canvas.drawLine(from: Point(x: xValue, y: yValue), to: Point(x: xValue, y: 54 + yValue))
    canvas.drawLine(from: Point(x: 5 + xValue, y: 5 + yValue), to: Point(x: 67 + xValue, y: 67 + yValue))
        
        canvas.textColor = .yellow
                canvas.drawText(message: "(\(xValue), \(yValue))",
                                at: Point(x: xValue-6, y: yValue-6),
                                size: 8,
                                kerning: 0)
        canvas.highPerformance = false
    }
}


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
