import Foundation

class Sketch : NSObject {
    let canvas : Canvas
    
    var x : Int
    var y : Int
    var x1 : Int
    var y1 : Int
    
    var dy1 : Int
    var dx1 : Int
    var dx : Int //Difference in x
    var dy : Int
    
    var speed : Int
    
    var distance : Double
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        
        x = random(from: 0, toButNotIncluding: 500)
        y = random(from: 0, toButNotIncluding: 500)
        x1 = random(from: 0, toButNotIncluding: 500)
        y1 = random(from: 0, toButNotIncluding: 500)
        
        speed = 5
        
        dx1 = speed
        dy1 = speed
        dy = speed
        dx = speed
        
        distance = 0
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //Clear the background
        //        canvas.drawShapesWithFill = true
        //        canvas.fillColor = Color.white
        //        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        //
        //        canvas.drawShapesWithFill = false
        //        canvas.borderColor = Color.black
        
        x1 += dx1
        x += dx
        y1 += dy1
        y += dy
        
        if x > 500
        {
            dx = -speed
        }
        if x < 0
        {
            dx = speed
        }
        if y > 500
        {
            dy = -speed
        }
        if y < 0
        {
            dy = speed
        }
        if x1 > 500
        {
            dx1 = -speed
        }
        if x1 < 0
        {
            dx1 = speed
        }
        if y1 > 500
        {
            dy1 = -speed
        }
        if y1 < 0
        {
            dy1 = speed
        }
        
        //        canvas.drawEllipse(centreX: x, centreY: y, width: 1, height: 1)
        //        canvas.drawEllipse(centreX: x, centreY: y, width: 100, height: 100)
        //        canvas.drawEllipse(centreX: x1, centreY: y1, width: 1, height: 1)
        //        canvas.drawEllipse(centreX: x1, centreY: y1, width: 200, height: 200)
        //        distance = sqrt(pow(x1-x, 2) + pow(250-y,2))
        
        let aSquared = (x1-x)*(x1-x)
        let bSquared = (y1-y)*(y1-y)
        distance = (sqrt(Double(aSquared)+Double(bSquared)))
        
        if distance < 500
        {
            canvas.lineColor = Color.init(hue: y, saturation: 100, brightness: 100, alpha: 100)
            canvas.drawLine(fromX: x1, fromY: y1, toX: x, toY: y)
        }
        
        
        
        
        
        
    }
    
}
