import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    var dx : Int //Difference in x
    var dy : Int
    
    var speed : Int
    

    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 25, toButNotIncluding: 475)
        y = random(from: 25, toButNotIncluding: 475)
        
        speed = 10
        
        dy = speed
        dx = speed
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //Clear the background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        canvas.fillColor = Color.black
        
        x += dx
        y += dy
        
        if x > 475
        {
            dx = -speed
        }
        if x < 25
        {
            dx = speed
        }
        if y > 475
        {
            dy = -speed
        }
        if y < 25
        {
            dy = speed
        }
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}

