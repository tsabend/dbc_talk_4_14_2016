import Foundation

//: Delegates and Datasources Delegation is one of the most common patterns in Cocoa. One object has a reference to another and sends it messages (calls functions on it). Typically, this pattern is implemented with a protocol for the delegates type to keep these relationships modular.


protocol MobileNotificationDelegate {
    func didRecieveAlert()
}

class Human: MobileNotificationDelegate {
    let phone: iPhone
    init(phone: iPhone) {
        self.phone = phone
        phone.delegate = self
    }
    
    func didRecieveAlert() {
        self.checkPhoneCompulsively()
    }
    
    func checkPhoneCompulsively() {
        
    }
}

class iPhone {
    var delegate: MobileNotificationDelegate?
    func pollForUpdates() {
        // imagine it making some networking request.
        // if it has a new message it calls.
        delegate?.didRecieveAlert()
    }
}


//: [Previous](@previous)

//: [Next](@next)
