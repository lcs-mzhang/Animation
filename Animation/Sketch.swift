import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        
        // Change position
        x += 1
        let a : Double = -500/62500
        y = Int(a*(Double(x)-250)*(Double(x)-250)+500)
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}

//x-ints are
