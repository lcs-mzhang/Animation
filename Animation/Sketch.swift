import Foundation
extension Degrees {
    func toRadians() -> Double {
        return Double(self) * Double.pi / 180.0
    }
}

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
        canvas.drawShapesWithBorders = false
        
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        y = Int(100*sin(0.02631819699*Double(x)))
        for k in stride(from: 0, to: 500, by: 20)
        {
            for _ in stride(from: 20, to: 360, by: 20)
            {
                canvas.fillColor = Color.init(hue: k, saturation: 100, brightness: 100, alpha: 100)
                canvas.drawEllipse(centreX: x, centreY: y+k, width: 5, height: 5)
            }
        }
        
        y = -Int(100*sin(0.02631819699*Double(x)))
        for k in stride(from: 0, to: 500, by: 20)
        {
            for _ in stride(from: 20, to: 360, by: 20)
            {
                canvas.fillColor = Color.init(hue: k, saturation: 100, brightness: 100, alpha: 100)
                canvas.drawEllipse(centreX: x, centreY: y+k, width: 5, height: 5)
            }
        }
        

        
    }
    
}
