//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 800, height: 600)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// No borders
canvas.drawShapesWithBorders = false

// Move the origin to the middle of the canvasand
canvas.translate(byX: 400, byY: 300)

// Draw the axes so we can see where we are
canvas.drawAxes()

// Draw a bat relative to the origin
canvas.fillColor = Color.black

// First make an ellipse to form the body
canvas.drawEllipse(centreX: 0, centreY: 0, width: 200, height: 100)

// Now "cut out" the wings and head by overlapping circles
canvas.fillColor = Color.white

// Underside of wings
canvas.drawEllipse(centreX: -70, centreY: -10, width: 50, height: 50) // left
canvas.drawEllipse(centreX: -35, centreY: -10, width: 50, height: 50) // left middle
canvas.drawEllipse(centreX: 35, centreY: -10, width: 50, height: 50) // right middle
canvas.drawEllipse(centreX: 70, centreY: -10, width: 50, height: 50) // right
// Further down
canvas.drawEllipse(centreX: 0, centreY: -50, width: 50, height: 100) // middle
// Get rid of rest further down
canvas.drawRectangle(centreX: 0, centreY: -35, width: 200, height: 30)

// Now add the head
canvas.fillColor = Color.black
var headVertices : [NSPoint] = []
headVertices.append(NSPoint(x: -40, y: 40))
headVertices.append(NSPoint(x: 40, y: 40))
headVertices.append(NSPoint(x: 30, y: 80))
headVertices.append(NSPoint(x: 20, y: 60))
headVertices.append(NSPoint(x: -20, y: 60))
headVertices.append(NSPoint(x: -30, y: 80))
headVertices.append(NSPoint(x: -40, y: 40)) // end where we started
canvas.drawCustomShape(with: headVertices)

/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView
