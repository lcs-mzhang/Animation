import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 800, height: 600)
        
        // Set starting position
        x = 250
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: canvas.width, height: canvas.height)
        
        x += 1
        
        canvas.drawShapesWithBorders = false
        
        // Move the origin to the middle of the canvasand
        canvas.translate(byX: x, byY: 300)

        
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
        
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: -10, centreY: 45, width: 10, height: 10)
        canvas.drawEllipse(centreX: 10, centreY: 45, width: 10, height: 10)

    }
    
}
