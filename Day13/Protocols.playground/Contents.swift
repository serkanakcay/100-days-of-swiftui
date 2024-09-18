import SwiftUI

//MARK: Protocols

protocol Vehicle {
    var name : String{get}
    var currentPassengers: Int {get set}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}


struct Car: Vehicle{
 let name = "car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 5
    }
    func travel(distance: Int) {
        print("I ma driving \(distance) km")
    }
}


func commute(distance: Int, using vehicle: Car){
    if vehicle.estimateTime(for: distance) > 100{
        print("Thats to slow ı lll try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)


//-----------------------------------------

func getRandomNumber() -> Equatable{
    Int.random(in: 1...6)
}

func getRandomBool() -> Equatable{
    Bool.random()
}


print(getRandomNumber() == getRandomBool() )










