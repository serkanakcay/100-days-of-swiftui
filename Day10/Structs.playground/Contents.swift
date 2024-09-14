import SwiftUI

//MARK: Structs

struct Album {
    let title : String
    let artist: String
    let year: Int
    
    func printSummary(){
        print("\(title) \(artist) by: \(year)")
    }
}


let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)


print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()


struct Employee {
    let name: String
    var vacarionRemaing: Int
    
    
   mutating func takeVacation(days:Int){
        if vacarionRemaing > days {
            vacarionRemaing -= days
            print("I'm going on vacation")
            print("Days remaining : \(vacarionRemaing)")
        }
       else {
           print("Oops' There aren't enoug days remaining")
       }
    }
}


var archer = Employee(name: "Sterling Archer", vacarionRemaing: 14)

archer.takeVacation(days: 5)
print(archer.vacarionRemaing)


let a = 1
let b  = 2.0
let c = Double(a) + b

//----------------------------------------------------------------

struct EmployeeOne{
    let name: String
    var vacation: Int
}


var archers = EmployeeOne(name: "Sterling Archer", vacation: 14)
archers.vacation -= 5
print(archers.vacation)



struct EmployeeOnes {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining : Int {
        get{
            vacationAllocated - vacationTaken
        }set {
            vacationTaken = vacationTaken + newValue
        }
    }
}




var archerOne = EmployeeOnes(name: "Sterling Archer", vacationAllocated: 14)


//-------------------------------------------------------------------------

struct Game {
    var score = 0 {
        didSet{
            print("Score is now:  \(score)")
        }
       
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1




struct App {
    var contacts = [String](){
        willSet{
            print("Current Value is: \(contacts)")
            print("New Value will be: \(newValue)")
        }
        didSet{
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}


var app =  App()
app.contacts.append("Adrian En")
app.contacts.append("Allen")

//------------------------------

struct Player {
    let name:String
    let number: Int
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}

let player = Player(name: "Menag R", number: 15)












