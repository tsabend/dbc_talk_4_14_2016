import UIKit
import XCPlayground

class ViewController: UIViewController {
    let subview = UIView()
    
    // Set the view controllers main view
    override func loadView() {
        self.view = DBCContainer()
    }
    
    // A shortcut to getting the main view with correct type
    var dbcView: DBCContainer? {
        return self.view as? DBCContainer
    }
    
    // Customize the subviews or do other things 
    // a controller might do (talk to models etc.)
    override func viewDidLoad() {
        super.viewDidLoad()
        // just like with a view, you can set up subviews
        self.subview.backgroundColor = UIColor.redColor()
        // and add them to the view
        self.view.addSubview(self.subview)
        
        // even ones within subviews
        self.dbcView?.title.text = "Goodbye"
    }
    
    // You will get this callback after the view
    // lays out its subviews.
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // and then you can move things in the subviews
        self.dbcView?.title.alignBottom(100, toView: self.view)
        
        self.subview.size = CGSize(width: 10, height: 10)
        self.subview.center.x = self.view.center.x
        self.subview.alignBottom(200, toView: self.view)
    }
}

let vc = ViewController()

let iPhoneSixScreenRect = CGRect(origin: CGPoint.zero, size: CGSize(width: 375, height: 667))
vc.view.frame = iPhoneSixScreenRect

XCPlaygroundPage.currentPage.liveView = vc.view

//: [Previous](@previous)

//: [Next](@next)
