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
for i in 1...97{
    x = x+1
    if x == 8{
        let currentColor = Color(
            hue: 58,
            saturation: 85,
            brightness: 100,
            alpha: 100)
        canvas.lineColor = currentColor
        canvas.defaultLineWidth = x + 2
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: Double(165 + x), startAngle: 180, endAngle: 270)
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: Double(165 + x), startAngle: 340, endAngle: 50)
    }else if x == 24{
        let currentColor = Color(
            hue: 44,
            saturation: 67,
            brightness: 100,
            alpha: 100)
        canvas.lineColor = currentColor
        canvas.defaultLineWidth = x - 4
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: Double(165 + x), startAngle: 210, endAngle: 310)
        print(x)
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: Double(165 + x), startAngle: 0, endAngle: 70)
    }else if x == 96{
        let currentColor = Color(
            hue: 58,
            saturation: 85,
            brightness: 100,
            alpha: 100)
        canvas.lineColor = currentColor
        canvas.defaultLineWidth = 60
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: Double(165 + x), startAngle: 220, endAngle: 45)
    }else if x == 80{
        let currentColor = Color(
            hue: 44,
            saturation: 67,
            brightness: 100,
            alpha: 100)
        canvas.lineColor = currentColor
        canvas.defaultLineWidth = 120
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: 353, startAngle: 220, endAngle: 95)
    }else{
        let currentColor = Color(
            hue: 76,
            saturation: 85,
            brightness: 96,
            alpha: 100)
        canvas.lineColor = currentColor
        canvas.defaultLineWidth = 5
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: 165, startAngle: 150, endAngle: 230)
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: 165, startAngle: 320, endAngle: 30)
        canvas.defaultLineWidth = 30
        canvas.arc(withCenter: Point(x: 120, y: 180), radius: 215, startAngle: 220, endAngle: 90)
        
    }
}
canvas.drawText(message: "beethoven", at: Point(x: 30, y: 250), size: 20, kerning: 0)
canvas.drawText(message: "tonhalle  grosser saal", at: Point(x: 100, y: 220), size: 8, kerning: 0)
canvas.drawText(message: "dienstag.den 22.februar 1955", at: Point(x: 135, y: 210), size: 8, kerning: 0)
canvas.drawText(message: "20.15uhr", at: Point(x: 135, y: 200), size: 8, kerning: 0)
canvas.drawText(message: "4.extrakonzert", at: Point(x: 135, y: 190), size: 8, kerning: 0)
canvas.drawText(message: "leitung  carl schuricht", at: Point(x: 105, y: 175), size: 8, kerning: 0)
canvas.drawText(message: "solist  wolfgang schneiderhan", at: Point(x: 110, y: 165), size: 8, kerning: 0)
canvas.drawText(message: "beethoven  ouverture zu coriolan op.62 ", at: Point(x: 90, y: 140), size: 8, kerning: 0)
canvas.drawText(message: "violinkonzert in  d-dur op.61", at: Point(x: 135, y: 130), size: 8, kerning: 0)
canvas.drawText(message: "siebente sinfonie in a-dur op.92", at: Point(x: 135, y: 120), size: 8, kerning: 0)
canvas.drawText(message: "vorverkauf  konhalle-kasse hug jecklin", at: Point(x: 90, y: 105), size: 8, kerning: 0)
canvas.drawText(message: "kuoni", at: Point(x: 135, y: 95), size: 8, kerning: 0)
canvas.drawText(message: "karten zu fr3.50bis9.50", at: Point(x: 135, y: 85), size: 8, kerning: 0)
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
