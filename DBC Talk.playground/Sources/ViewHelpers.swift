import UIKit

public extension UIView {
    
    public var size: CGSize {
        get { return self.frame.size }
        set { self.frame.size = newValue }
        
    }
    public var width: CGFloat {
        get { return self.size.width }
        set { self.size.width = newValue }
    }
    
    public var height: CGFloat {
        get { return self.size.height }
        set { self.size.height = newValue }
    }
    
    public var origin: CGPoint {
        get { return self.frame.origin }
        set { self.frame.origin = newValue }
    }
    
    public var x: CGFloat {
        get { return self.origin.x }
        set { self.origin.x = newValue }
    }
    
    public var y: CGFloat {
        get { return self.origin.y }
        set { self.origin.y = newValue }
    }
    
    public var maxX: CGFloat {
        get { return self.frame.maxX }
    }
    
    public var maxY: CGFloat {
        get { return self.frame.maxY }
    }
    
    public func alignRight(rightMargin: CGFloat, toView view: UIView) {
        self.x = view.bounds.width - self.bounds.width - rightMargin
    }
    
    public func alignBottom(bottomMargin: CGFloat, toView view: UIView) {
        self.y = view.bounds.height - self.bounds.height - bottomMargin
    }
    
    public func moveToVerticalCenter(ofView view: UIView) -> Void {
        self.y = view.bounds.size.height / 2.0 - self.bounds.size.height / 2.0
    }
    
    public func moveToHorizontalCenter(ofView view: UIView) {
        self.x = view.bounds.size.width / 2.0 - self.bounds.size.width / 2.0
    }
    
    public func moveToCenter(ofView view: UIView) {
        self.moveToHorizontalCenter(ofView: view)
        self.moveToVerticalCenter(ofView: view)
    }
    
    public func moveBelow(siblingView view: UIView, margin: CGFloat) {
        self.moveBelow(siblingView: view, margin: margin, alignment: .None)
    }
    
    public enum Alignment {
        case Left, Right, Center, None
    }
    
    public func moveBelow(siblingView view: UIView, margin: CGFloat, alignment: Alignment) {
        self.y = CGRectGetMaxY(view.frame) + margin
        self.centerHorizontally(view, alignment: alignment)
    }
    
    public func centerHorizontally(view: UIView, alignment: Alignment = .Center) {
        switch alignment {
        case .Left:
            self.x = view.x
        case .Right:
            self.x = view.frame.maxX - self.bounds.width
        case .Center:
            self.center.x = view.center.x
        case .None:
            break
        }
    }
    
    public func moveAbove(siblingView view: UIView, margin: CGFloat, alignment: Alignment) {
        self.y = CGRectGetMinY(view.frame) - self.height - margin
        self.centerHorizontally(view, alignment: alignment)
    }
    
    public func moveAbove(siblingView view: UIView, margin: CGFloat) {
        self.moveAbove(siblingView: view, margin: margin, alignment: .None)
    }
    
    public func moveRight(siblingView view: UIView, margin: CGFloat, alignVertically: Bool = false){
        self.x = view.frame.maxX + margin
        if alignVertically {
            self.centerVertically(toSiblingView: view)
        }
    }
    
    public func moveLeft(siblingView view: UIView, margin: CGFloat, alignVertically: Bool = false) {
        self.x = view.frame.origin.x - self.bounds.width - margin
        if alignVertically {
            self.centerVertically(toSiblingView: view)
        }
    }
    
    public func centerVertically(toSiblingView view: UIView){
        self.center.y = view.center.y
    }
    
}
