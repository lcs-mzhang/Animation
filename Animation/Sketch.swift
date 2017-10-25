import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    //Change in position
    var dx : Int //Difference in x
    
    var speed : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0

        speed = 10
        
        dx = speed
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //Clear the background
        
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        canvas.fillColor = Color.init(hue: x, saturation: 100, brightness: 100, alpha: 100)
        // Change position
        x += dx
        
        if x > 475
        {
            dx = -speed
        }
       
        if x < 25
        {
            dx = speed
        }
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        
    }
    
}
