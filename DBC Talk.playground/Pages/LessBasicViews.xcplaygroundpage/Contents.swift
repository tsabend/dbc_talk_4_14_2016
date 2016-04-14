import UIKit
import XCPlayground

class Container: UIView {
    
    let title = UILabel()
    let smileyFace = SmileyFace()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        
        // Setup the subview
        self.title.text = "Hello DBC"
        self.title.textColor = UIColor.blackColor()
        
        // Add it to the superview
        self.addSubview(self.title)
        self.addSubview(self.smileyFace)
    }
    
    
    // This is the most annoying thing in the world. Blame storyboards. Maybe it will be fixed some day.
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // This method is defined in the superclass.
    // Override it and do all of your layout code here.
    override func layoutSubviews() {
        super.layoutSubviews()
        // Size and position the subview.
        
        // This handy method will cause many Cocoa elements to correctly size themselves (more later)
        self.title.sizeToFit()
        self.title.center.x = self.center.x
        self.title.frame.origin.y = self.frame.height * 0.1
        
        self.smileyFace.sizeToFit()
        self.smileyFace.center = self.center
    }
}

class SmileyFace: UIView {
    let leftEye = UIView()
    let rightEye = UIView()
    let mouth = UIView()
    init() {
        super.init(frame: CGRect.zero)
        self.backgroundColor = UIColor.yellowColor()
        // Setup subviews
        self.leftEye.backgroundColor = UIColor.blackColor()
        self.rightEye.backgroundColor = UIColor.blackColor()
        self.mouth.backgroundColor = UIColor.blackColor()
        // Add to superview
        self.addSubview(self.leftEye)
        self.addSubview(self.rightEye)
        self.addSubview(self.mouth)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // When sizeToFit is called on a SmileyFace instance it will give the instance a size of 100x100. This is a dumb implementation, but you can imagine better ones.
    override func sizeThatFits(size: CGSize) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let eyeSize =  CGSize(width: 20, height: 20)
        let eyeY = self.bounds.height * 0.2
        let eyeXMargin = self.bounds.width * 0.2
        // Size and poistion the eyes
        self.leftEye.frame.size = eyeSize
        self.leftEye.frame.origin.y = eyeY
        self.leftEye.frame.origin.x = eyeXMargin
        
        self.rightEye.frame.size = eyeSize
        self.rightEye.frame.origin.y = eyeY
        self.rightEye.frame.origin.x = self.bounds.maxX -  eyeXMargin - self.rightEye.frame.width
        
        self.mouth.frame.size.width = self.rightEye.frame.maxX - self.leftEye.frame.origin.x
        self.mouth.frame.size.height = 10
        
        self.mouth.frame.origin.y = self.leftEye.frame.origin.y + 2 * eyeY
        self.mouth.frame.origin.x = self.leftEye.frame.origin.x
        
        // Make the things circular
        self.layer.cornerRadius = self.frame.width / 2
        self.leftEye.layer.cornerRadius = self.leftEye.frame.width / 2
        self.rightEye.layer.cornerRadius = self.leftEye.frame.width / 2
        
    }
}


let iPhoneSixScreenRect = CGRect(origin: CGPoint.zero, size: CGSize(width: 375, height: 667))
let view = Container(frame: iPhoneSixScreenRect)

XCPlaygroundPage.currentPage.liveView = view
