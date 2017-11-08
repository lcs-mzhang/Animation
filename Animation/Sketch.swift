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
    var x2 : Double
    var y2 : Int
    var x3 : Double
    var y3 : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 360, height: 360)
        
        // Set starting position
        x = 0
        y = 0
        x2 = 0
        y2 = 0
        x3 = 0
        y3 = 0

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
            if canvas.frameCount < 180
            {
                canvas.fillColor = Color.init(hue: k, saturation: 100, brightness: 100, alpha: 100)
                canvas.drawEllipse(centreX: Int(x), centreY: y+k, width: 5, height: 5)
                canvas.drawEllipse(centreX: 360-Int(x), centreY: -y+k, width: 5, height: 5)
            }
            else
            {
                canvas.fillColor = Color.white
                x2 += 1
                x3 += 1
                for i : Double in stride(from: 360, to: 0, by: -20)
                {
                    let a : Double = -6/90
                    let y2 = a * (pow(x2-150,2)) + i
                    let y3 = a * (pow(x3-210,2)) + i
                    canvas.drawEllipse(centreX: Int(x2), centreY: Int(y2), width: 5, height: 5)
                    canvas.drawEllipse(centreX: Int(x3), centreY: Int(y3), width: 5, height: 5)
                }


            }

        }

        
      
        
    }
    
}
