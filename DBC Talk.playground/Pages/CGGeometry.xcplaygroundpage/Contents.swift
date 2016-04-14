import UIKit
import XCPlayground

//: ##### CGGeometry straight from the source.
//: CGGeometry defines structures for geometric primitives and functions that operate on them. The data structure CGPoint represents a point in a two-dimensional coordinate system. The data structure CGRect represents the location and dimensions of a rectangle. The data structure CGSize represents the dimensions of width and height.

//: A point is defined by an x and y coordinate
//the top left of the screen
let point = CGPoint(x: 0, y: 0)

//: A size is defined by a width and height
// a 100x100 square
let size = CGSize(width: 100, height: 100)
//: A rect is defined by a point and a size
//:
let rect = CGRect(origin: point, size: size)
// You can also create a rect from the 4 necessary attributes
//:
var sameRectDefinedDifferently = CGRect(x: 0, y: 0, width: 100, height: 100)

//: CGRect is a struct, not a class. This means it is passed by value. Two rects with the same values are the same, but changing one won't change the other.

rect == sameRectDefinedDifferently
sameRectDefinedDifferently.origin.x += 10
rect == sameRectDefinedDifferently

//: UIView is the base class for views in Cocoa. Views have two rects that describe there positions on the screen: a frame and a bounds.
//: * Frame: The views coordinates within its superview's coordinate system
//: * Bounds The views coordinates within its own coordinate system
let view = UIView()

view.frame
view.bounds

view.frame = rect

view.frame

view.backgroundColor = UIColor.redColor()

XCPlaygroundPage.currentPage.liveView = view

//: [Previous](@previous)

//: [Next](@next)
