import UIKit
import XCPlayground

class Container: UIView {
    
    let title = UILabel()
    let subtitle = UILabel()
    let greatButton = UIButton()
    let amazingButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        
        // Setup the subview
        self.title.text = "Hello DBC"
        self.title.textColor = UIColor.blackColor()
        
        self.subtitle.text = "How are ya?"
        self.subtitle.textColor = UIColor.blackColor()
        
        self.greatButton.setTitle("Great", forState: .Normal)
        self.greatButton.setTitleColor(UIColor.greenColor(), forState: .Normal)
        self.amazingButton.setTitle("Amazing", forState: .Normal)
        self.amazingButton.setTitleColor(UIColor.purpleColor(), forState: .Normal)
        
        // Add it to the superview
        self.addSubview(self.title)
        self.addSubview(self.subtitle)
        self.addSubview(self.greatButton)
        self.addSubview(self.amazingButton)
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
        self.title.centerHorizontally(self)
        self.title.y = self.frame.height * 0.1
        
        self.subtitle.sizeToFit()
        self.subtitle.moveBelow(siblingView: self.title, margin: 100, alignment: .Center)
        
        self.amazingButton.sizeToFit()
        self.amazingButton.moveBelow(siblingView: self.subtitle, margin: 100)
        self.amazingButton.x = 100
        
        self.greatButton.sizeToFit()
        self.greatButton.centerVertically(toSiblingView: self.amazingButton)
        self.greatButton.alignRight(100, toView: self)
    }
}

let iPhoneSixScreenRect = CGRect(origin: CGPoint.zero, size: CGSize(width: 375, height: 667))
let view = Container(frame: iPhoneSixScreenRect)

XCPlaygroundPage.currentPage.liveView = view


//: [Next](@next)


