import UIKit

/*: 
    Ruby class
     class Person
         attr_reader :name
         def initializer(name)
             @name = name
         end
         
         def introduce
             
            puts "Hello, my name is #{self.name}"
 
         end
     end
*/
//: Swift has classes with methods and properties and inheritance, just like Ruby, only Swift is into curly braces


class Person {
    let name: String // property

    // initializer
    init(name: String /**args with types*/) {
        self.name = name
    }

    // function
    func introduce() {
        // String interpolation
        print("My name is \(self.name)")
    }

}

class FinalProject {
    let idea: String
    init(idea: String) {
        self.idea = idea
    }
}

class DBCStudent: Person {

    let quirk: String // immutable.
    var totallyStressedOut = false // mutable.

    init(quirk: String, name: String) {
        self.quirk = quirk
        super.init(name: name) // you can call super to objects you inherit from
    }

    func doAFinalProject() -> FinalProject /** return type */ {
        self.totallyStressedOut = true
        let project = FinalProject(idea: "Uber for carrier pidgeons")
        return project // no implicit return
    }

    // Computed variables are cool
    var loudQuirk: String {
        return self.quirk.uppercaseString
    }
}

let thomas = DBCStudent(quirk: "Has been to all 50 states", name: "Thomas")
//thomas.introduce()


extension DBCStudent {
    func (<#parameters#>) -> <#return type#> {
        <#function body#>
    }
}


//: [Previous](@previous)

//: [Next](@next)
