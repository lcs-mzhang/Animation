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
    var x : Degrees
    var y : Int

    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 360, height: 360)
        
        // Set starting position
        x = 0
        y = 0

        canvas.drawShapesWithBorders = false
        
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 360, height: 360)
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        y = Int(100*sin(Double(x.toRadians()*2)))
        for k in stride(from: 0, to: 360, by: 20)
        {
            if canvas.frameCount < 250
            {
                canvas.fillColor = Color.init(hue: k, saturation: 100, brightness: 100, alpha: 100)
                canvas.drawEllipse(centreX: Int(x), centreY: y+k, width: 5, height: 5)
                canvas.drawEllipse(centreX: 360-Int(x), centreY: -y+k, width: 5, height: 5)
            }


        }

        
      
        
    }
    
}
