import SwiftUI


// MARK: CLASS

class Game {
    var score = 0 {
        didSet{
            print("Score is now \(score)")
        }
    }
}


var newGame = Game()
newGame.score += 10

// inherit

class Emloyee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    func printSummery(){
        print("I work \(hours) hours a day.")
    }
}

class Developer: Emloyee {
    func work(){
        print("I'am writing code for \(hours) hours")
    }
    override func printSummery() {
        print("""
              I am developer who will sometimes work \(hours) hours a day, but other times will spend hours arguing about
""")
    }
}

class Manager : Emloyee{
    func work(){
        print("I'm going to meetings for \(hours) hours")
    }
}


let robert = Developer(hours: 8)
let joseph  =  Manager(hours: 10)

robert.work()
joseph.work()


let novall = Developer(hours: 8)
novall.printSummery()



// initializers

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}


class Car : Vehicle {
    let isConvertible : Bool
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

//----------------------------------------------------
// MARK: Copy Class

class User{
    var username =  "Anonymous"
    
}

var user1 =  User()
var user2 = user1


user2.username =  "Taylor"

print(user1.username)
print(user2.username)

//-------------------------------DEINIT


class Users{
    let id: Int
    init(id: Int) {
        self.id = id
        print("User \(id): I'am alive")
    }
    deinit{
        print("User \(id): I'am dead")
    }
}


for i in 1...4{
    let user = Users(id: i)
    print("User \(user.id) I'm in control")
}

//----------------inside class


class UserOne{
    var name = "Paul"
}


let user = UserOne()
user.name = "Taylor"
print(user.name)









