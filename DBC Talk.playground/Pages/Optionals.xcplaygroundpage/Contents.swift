import Foundation

//: An optional is a type that may or may not be nil. Although at first, you may be confused or frustrated by all the question marks, stay strong. They are incredibly useful.

class Fridge {
    var beer: Beer?
}

struct Beer {
    let brand: String
    let abv: Int?
}

class Thomas {
    let fridge: Fridge
    init(fridge: Fridge) {
        self.fridge = fridge
    }

    func comeHomeFromAHardDaysWork() -> String {
        if let beer = self.fridge.beer {
            self.fridge.beer = nil
            return "mmm....a tasty \(beer.brand)"
        }
        return "😫"
    }
}

let f = Fridge()
let t = Thomas(fridge: f)

//: No Beers yet. Dismay
t.comeHomeFromAHardDaysWork()

//: Now with beer
f.beer = Beer(brand: "Lagunitas", abv: 4)
t.comeHomeFromAHardDaysWork()

//: Back to no beers!
t.comeHomeFromAHardDaysWork()

//: Optional chaining

f.beer = Beer(brand: "O'Douls", abv: nil)

//: You can chain optionals with ?'s
f.beer?.abv

//: Force unwrapping an optional with a ! is a bad idea because your app will crash if the value returns nil

//f.beer?.abv!

//: The best way to unwrap optionals is with an if-let (or guard-let)

if let abv = f.beer?.abv {
    
}

//: By making you consider whether your values will be nil, Swift forces you to write better and safer code. Like Swift, Ruby will crash when you send messages to nil but unlike Swift you have no idea when this might happen and it is a frequent source of bugs.

//: [Previous](@previous)

//: [Next](@next)
