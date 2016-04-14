import UIKit
import XCPlayground
/*: 
 There are a few steps to programatically adding subviews. 
 1. Create and setup the subview.
 2. Add the subview to its superview.
 3. Layout the subview (give it size and position).
*/
class Container: UIView {
    
    let title = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        
        // Setup the subview
        self.title.text = "Hello DBC"
        self.title.textColor = UIColor.blackColor()
        
        // Add it to the superview
        self.addSubview(self.title)
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
        self.title.center = self.center
     
    }
}


let iPhoneSixScreenRect = CGRect(origin: CGPoint.zero, size: CGSize(width: 375, height: 667))
let view = Container(frame: iPhoneSixScreenRect)

XCPlaygroundPage.currentPage.liveView = view

//: [Previous](@previous)

//: [Next](@next)