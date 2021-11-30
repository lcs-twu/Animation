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
canvas.translate(to: Point(x: 100,
                           y: 100))

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */

// Begin writing your code below (you can remove the examples shown)
canvas.drawShapesWithFill = false
// background
canvas.highPerformance = true
for value1 in stride(from: 10,
                     through: 100,
                     by: 1){
    // change the color
    let currentColor = Color(
        hue: 197,
        saturation: 100,
        brightness: 85,
        alpha: 100)
    canvas.lineColor = currentColor
    canvas.defaultLineWidth = 6
    canvas.drawLine(from: Point(x: 3, y: value1*6-56), to: Point(x: 400, y: value1*6-56))
    
    
}
// Turn on high performance mode
//canvas.highPerformance = true
//canvas.highPerformance = false

for value in stride(from: 400,
                    through: 50,
                    by: -50){
    let currentColor = Color(
        hue: 197,
        saturation: 100,
        brightness: 85,
        alpha: 100)
    
    canvas.defaultBorderWidth = 8
    canvas.borderColor = .white
    canvas.drawShapesWithBorders = true
    canvas.drawEllipse(at: Point(x: 200, y: 350), width: value, height: value)
    canvas.drawShapesWithBorders = false
    canvas.drawShapesWithFill = true
    canvas.fillColor = .white
    canvas.drawEllipse(at: Point(x: 200, y: 350), width: 10, height: 10)
    canvas.drawShapesWithFill = false
    
for value2 in stride(from: 400,
                    through: 50,
                    by: -50){
    let currentColor1 = Color(
        hue: 314,
        saturation: 85,
        brightness: 65,
        alpha: 100)
    
    canvas.drawShapesWithBorders = true
    canvas.borderColor = currentColor1
    canvas.drawEllipse(at: Point(x: 200, y: 450), width: value2, height: value2)
    canvas.drawShapesWithBorders = false
    canvas.drawShapesWithFill = true
    canvas.fillColor = currentColor1
    canvas.drawEllipse(at: Point(x: 200, y: 450), width: 10, height: 10)
    canvas.drawShapesWithFill = false
    }

    
}
// text
canvas.drawText(message: "superdrag", at: Point(x: 10, y: 85), size: 35, kerning: 0)
canvas.drawText(message: "with", at: Point(x: 10, y: 45), size: 10, kerning: 0)
canvas.drawText(message: "the shambles", at: Point(x: 10, y: 30), size: 8, kerning: 0)
canvas.drawText(message: "and lifter", at: Point(x: 10, y: 15), size: 8, kerning: 0)
canvas.drawText(message: "thursday", at: Point(x: 110, y: 45), size: 8, kerning: 0)
canvas.drawText(message: "june 13 1996/8:30", at: Point(x: 110, y: 30), size: 8, kerning: 0)
canvas.drawText(message: "no age limit", at: Point(x: 110, y: 15), size: 8, kerning: 0)
canvas.drawText(message: "at brick by brick", at: Point(x: 300, y: 45), size: 8, kerning: 0)
canvas.drawText(message: "11:30 buenos avenue", at: Point(x: 300, y: 30), size: 8, kerning: 0)
canvas.drawText(message: "san diago, ca", at: Point(x: 300, y: 15), size: 8, kerning: 0)

canvas.highPerformance = false
