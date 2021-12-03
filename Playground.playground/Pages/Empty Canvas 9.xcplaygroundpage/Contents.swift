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
canvas.drawShapesWithFill = false

for xPosition in stride(from: 0, through: 196*2, by: 28){
        canvas.highPerformance = true
        
        canvas.drawShapesWithBorders = true
    //colour
    let currentColor1 = Color(
        hue: 339,
        saturation: 100,
        brightness: 94,
        alpha: 100)
    
    let currentColor2 = Color(
        hue: 79,
        saturation: 10,
        brightness: 84,
        alpha: 100)
    
    canvas.drawRectangle(at: Point(x: -6, y: -6), width: xPosition, height: xPosition, anchoredBy: .centre, borderWidth: 14)
        
    if xPosition/28 % 2 == 0 {
        canvas.borderColor = currentColor1
    }else if xPosition/28 - 2 == 1{
        canvas.borderColor = currentColor2
    }else if xPosition/28 - 2 == 5{
        canvas.borderColor = currentColor2
    }else if xPosition/28 - 2 == 9{
        canvas.borderColor = currentColor2
    }else{
        canvas.borderColor = .black
    }

    
        canvas.highPerformance = false
}

for xPosition2 in stride(from: 0, through: 196*2, by: 28){
        canvas.highPerformance = true

        canvas.drawShapesWithBorders = true
    //colour
    let currentColor1 = Color(
        hue: 339,
        saturation: 100,
        brightness: 94,
        alpha: 100)
    
    let currentColor2 = Color(
        hue: 79,
        saturation: 10,
        brightness: 84,
        alpha: 100)

    canvas.drawRectangle(at: Point(x: 406, y: -6), width: -xPosition2, height: -xPosition2, anchoredBy: .centre, borderWidth: 14)
    
    if xPosition2/28 % 2 == 0 {
        canvas.borderColor = currentColor1
    }else if xPosition2/28 - 2 == 1{
        canvas.borderColor = currentColor2
    }else if xPosition2/28 - 2 == 5{
        canvas.borderColor = currentColor2
    }else if xPosition2/28 - 2 == 9{
        canvas.borderColor = currentColor2
    }else{
        canvas.borderColor = .black
    }
    
        canvas.highPerformance = false
}

for xPosition3 in stride(from: 0, through: 196*2, by: 28){
        canvas.highPerformance = true

        canvas.drawShapesWithBorders = true
    //colour
    let currentColor1 = Color(
        hue: 339,
        saturation: 100,
        brightness: 94,
        alpha: 100)
    
    let currentColor2 = Color(
        hue: 79,
        saturation: 10,
        brightness: 84,
        alpha: 100)

    canvas.drawRectangle(at: Point(x: -6, y: 406), width: xPosition3, height: -xPosition3, anchoredBy: .centre, borderWidth: 14)
    
    if xPosition3/28 % 2 == 0 {
        canvas.borderColor = currentColor1
    }else if xPosition3/28 - 2 == 1{
        canvas.borderColor = currentColor2
    }else if xPosition3/28 - 2 == 5{
        canvas.borderColor = currentColor2
    }else if xPosition3/28 - 2 == 9{
        canvas.borderColor = currentColor2
    }else{
        canvas.borderColor = .black
    }
    
        canvas.highPerformance = false
}

for xPosition4 in stride(from: 0, through: 196*2, by: 28){
        canvas.highPerformance = true

        canvas.drawShapesWithBorders = true
    //colour
    let currentColor1 = Color(
        hue: 339,
        saturation: 100,
        brightness: 94,
        alpha: 100)
    
    let currentColor2 = Color(
        hue: 79,
        saturation: 10,
        brightness: 84,
        alpha: 100)
    

    canvas.drawRectangle(at: Point(x: 406, y: 406), width: -xPosition4, height: -xPosition4, anchoredBy: .centre, borderWidth: 14)
    
    if xPosition4/28 % 2 == 0 {
        canvas.borderColor = currentColor1
    }else if xPosition4/28 - 2 == 1{
        canvas.borderColor = currentColor2
    }else if xPosition4/28 - 2 == 5{
        canvas.borderColor = currentColor2
    }else if xPosition4/28 - 2 == 9{
        canvas.borderColor = currentColor2
    }else{
        canvas.borderColor = .black
    }
    
        canvas.highPerformance = false
}
//background
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
let currentColor1 = Color(
    hue: 339,
    saturation: 100,
    brightness: 94,
    alpha: 100)
canvas.fillColor = currentColor1
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)
canvas.defaultLineWidth = 10
canvas.lineColor = currentColor1
canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200))
canvas.drawLine(from: Point(x: 200, y: 400), to: Point(x: 200, y: 0))


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
