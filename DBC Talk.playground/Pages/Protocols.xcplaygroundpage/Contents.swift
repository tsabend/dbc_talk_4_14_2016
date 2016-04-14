/*:
 
 * A protocol is an interface without an implementation. It specifies a contract that an object needs to fulfill in order to be considered of the protocol’s type.
 */
protocol Animate {
    func move()
}

//: * Objects that inherit from the protocol are said to “conform” to it. Both Fish and Humans conform to Animate.
class Fish: Animate {
    func move(){
        // TODO: impement how fish move
    }
}

class Human: Animate {
    func move(){
        // TODO: impement how humans move
    }
}

/*:
* Example protocols
    * In life: Basically everything with a definition
    * In web dev: 
        * HTTP
        * REST
        * JSON
    * In iOS dev: 
         * about ½ of the swift stdlib
         * `UITableViewDelegate`
         * `UIImagePickerControllerDelegate`
* Objects can conform to many protocols.
 */
protocol Breathing {
    func breathe()
}

extension Human: Breathing {
    func breathe() {
        // TODO: impement how humans breathe
    }
}

//:* UIApplicationDelegate is a protocol. A new project comes setup with some boilerplate implementations of some of the protocols methods. You can change the implementations. You can even make your own object that conforms to UIApplicationDelegate.

//: [Previous](@previous)

//: [Next](@next)
