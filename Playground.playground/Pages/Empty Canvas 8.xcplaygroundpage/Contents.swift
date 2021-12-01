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
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// Begin writing your code below (you can remove the examples shown)
//let currentColor = Color(
//    hue: 25,
//    saturation: 6,
//    brightness: 84,
//    alpha: 100)
//canvas.fillColor = currentColor
//
//var rectangleVertices: [Point] = [] // empty point of lists
//rectangleVertices.append(Point(x: 0, y: 200))
//rectangleVertices.append(Point(x: 400, y: 600))
//rectangleVertices.append(Point(x: 0, y: 600))
//canvas.drawCustomShape(with: rectangleVertices)
//
//
//let currentColor2 = Color(
//    hue: 47,
//    saturation: 96,
//    brightness: 100,
//    alpha: 100)
//canvas.fillColor = currentColor2
//var rectangleVertices2: [Point] = [] // empty point of lists
//rectangleVertices2.append(Point(x: 0, y: 200))
//rectangleVertices2.append(Point(x: 400, y: 200))
//rectangleVertices2.append(Point(x: 400, y: 600))
//canvas.drawCustomShape(with: rectangleVertices2)


for xPosition2 in stride(from: 0, through: 400, by: 45){
    for yPosition2 in stride(from: 200, through: 600, by: 45){
        canvas.highPerformance = true
                // draw triangles
            let currentColor = Color(
                hue: 47,
                saturation: 96,
                brightness: 100,
                alpha: 100)
                
        
            let currentColor2 = Color(
                hue: 25,
                saturation: 6,
                brightness: 84,
                alpha: 100)
                
        
                var triVertices: [Point] = [] // empty point of lists
                triVertices.append(Point(x: xPosition2, y: yPosition2))
                triVertices.append(Point(x: xPosition2 + 45, y: yPosition2))
                triVertices.append(Point(x: xPosition2 + 45, y: yPosition2 + 45))
                // 2. tell the canvas object to draw the triangle
        if yPosition2 - xPosition2 <= 200{
            canvas.fillColor = currentColor
        }else{
            canvas.fillColor = currentColor2
        }
                canvas.drawCustomShape(with: triVertices)        
                canvas.highPerformance = false
    }
}

for xPosition in stride(from: 0, through: 400, by: 45){
    for yPosition in stride(from: 200, through: 600, by: 45){
        canvas.highPerformance = true
                // draw triangles
            let currentColor = Color(
                hue: 10,
                saturation: 94,
                brightness: 93,
                alpha: 100)
                canvas.fillColor = currentColor
        
                var triVertices: [Point] = [] // empty point of lists
                triVertices.append(Point(x: xPosition, y: yPosition))
                triVertices.append(Point(x: xPosition + 45, y: yPosition + 45))
                triVertices.append(Point(x: xPosition, y: yPosition + 45))
                // 2. tell the canvas object to draw the triangle
                canvas.drawCustomShape(with: triVertices)
        
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 200)
        canvas.fillColor = currentColor



                // DEBUG: Show where each circle is
        canvas.textColor = .blue
                canvas.drawText(message: "(\(xPosition), \(yPosition))",
                                at: Point(x: xPosition, y: yPosition),
                                size: 8,
                                kerning: 0)
                canvas.highPerformance = false
    }
}
let currentColor3 = Color(
    hue: 25,
    saturation: 6,
    brightness: 84,
    alpha: 100)
canvas.textColor = currentColor3
canvas.drawText(message: "talking heads", at: Point(x: 15, y: 150), size: 35, kerning: 0)
canvas.drawText(message: "friday,saturday,sunday", at: Point(x: 15, y: 45), size: 8, kerning: 0)
canvas.drawText(message: "september 12,13,14 1975", at: Point(x: 15, y: 30), size: 8, kerning: 0)
canvas.drawText(message: "at cbgb and omfug", at: Point(x: 150, y: 45), size: 8, kerning: 0)
canvas.drawText(message: "315 bowey, new york city", at: Point(x: 150, y: 30), size: 8, kerning: 0)
canvas.drawText(message: "also appearing", at: Point(x: 280, y: 45), size: 8, kerning: 0)
canvas.drawText(message: "from brooklyn, the shirts", at: Point(x: 280, y: 30), size: 8, kerning: 0)

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
