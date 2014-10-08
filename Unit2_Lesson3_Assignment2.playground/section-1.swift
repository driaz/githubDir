// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Dog {
    
    let name: String
    let color: UIColor
    
    init(name: String, color: UIColor) {
        self.name = name
        self.color = color
        
    }
    
    class func genus() -> String {
        return "canis"
    }
    
    func talk(){
        println("bark bark")
    }
    
    func sit(){
        println("I am sitting")
    }
    
}

class Monster {
    
    let color: UIColor
    let typeOf: String
    let strength: UInt
    
    init(color: UIColor, typeOf: String, strength: UInt){
        self.color = color
        self.typeOf = typeOf
        self.strength = strength
        
    }
        
        func attack() {
            println("Your monster just attacked inflicting \(strength) damage")
        }
        
        func defend() {
            println("Your monster just defended you")
        }
}
    
class Building {
    
    let height: Int
    let numOfRooms: Int
    let cost: Int
    
    init(height: Int, numOfRooms: Int, cost: Int) {
        self.height = height
        self.numOfRooms = numOfRooms
        self.cost = cost
    }
    
    func build() {
        println("Building \(numOfRooms) rooms")
    }
    
}


let white = UIColor.whiteColor()
let dexter = Dog(name: "Dexter", color: white)

dexter.talk()
dexter.sit()


let banjo = Dog(name: "Bubbles", color: white)

banjo.talk()
banjo.sit()

let red = UIColor.redColor()
let fang = Monster(color: red, typeOf: "wolf", strength: 9)

fang.attack()
fang.defend()

let mansion1 = Building(height: 2000, numOfRooms: 40, cost: 5000000)

mansion1.build()

let genusOfDog = Dog.genus()
println("the genus of my dog is \(genusOfDog)")



