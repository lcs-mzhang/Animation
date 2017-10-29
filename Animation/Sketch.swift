import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0.0
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        
        for i : Double in stride(from: 0, to: 6, by: 1)
        {
        
        let a : Double = -i/1250
        let y = a * pow(x,2) + 2*i/5 * x
        }
//        for i : Double in stride(from: 500, to: 0, by: 50)
//        {
//            let a : Double = (-i/50)/1250
//            let y = a * pow(x,2) + i/125 * x
//        }
        canvas.drawEllipse(centreX: Int(x), centreY: Int(y), width: 10, height: 10)
       
    }
}
