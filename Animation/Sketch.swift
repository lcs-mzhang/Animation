import Foundation

class Sketch : NSObject {

    let canvas : Canvas
    var rand : Int
    
    override init() {
    
        canvas = Canvas(width: 1000, height: 1000)
        rand = 1
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        // Create canvas object – specify size
        
        
        canvas.drawShapesWithBorders = false
        
        canvas.fillColor = Color.black
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: canvas.width, height: canvas.height)
        canvas.translate(byX: canvas.width/2, byY: canvas.height/2)
        //HEAD
        canvas.fillColor = Color.white
        canvas.drawEllipse(centreX: 0, centreY: 150, width: 600, height: 600)
        
        
        //mouth
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: 0, centreY: 0, width: 400, height: 200)
        canvas.fillColor = Color.white
        //teeth
        
        canvas.drawEllipse(centreX: -125, centreY: -25, width: 50, height: 100)
        canvas.drawEllipse(centreX: -25, centreY: -50, width: 50, height: 100)
        canvas.drawEllipse(centreX: 25, centreY: -50, width: 50, height: 100)
        canvas.drawEllipse(centreX: 125, centreY: -25, width: 50, height: 100)
        canvas.drawEllipse(centreX: -75, centreY: -37, width: 50, height: 100)
        canvas.drawEllipse(centreX: 75, centreY: -37, width: 50, height: 100)
        canvas.drawEllipse(centreX: -175, centreY: 100, width: 50, height: 100)
        canvas.drawEllipse(centreX: 175, centreY: 100, width: 50, height: 100)
        
        canvas.drawEllipse(centreX: 0, centreY: 100, width: 450, height: 200)
        
        //nose
        canvas.fillColor = Color.black
        var nose : [NSPoint] = []
        nose.append(NSPoint(x: 0, y: 150))
        nose.append(NSPoint(x: 50, y: 50))
        nose.append(NSPoint(x: -50, y: 50))
        canvas.drawCustomShape(with: nose)
        
        //eyes
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: -150, centreY: 200, width: 150, height: 150)
        canvas.drawEllipse(centreX: 150, centreY: 200, width: 150, height: 150)
        canvas.fillColor = Color.white
        canvas.drawEllipse(centreX: -150, centreY: 200, width: 50, height: 50)
        canvas.drawEllipse(centreX: 150, centreY: 200, width: 50, height: 50)
        
       
rand = random(from: 0, toButNotIncluding: 11)
        if rand == 1
        {
            canvas.fillColor = Color.init(hue: 192, saturation: 100, brightness: 50, alpha: 100)
        }
        else
        {
            canvas.fillColor = Color.white
        }
canvas.drawEllipse(centreX: 150, centreY: 200, width: 50, height: 50)
      
    }
    
}
