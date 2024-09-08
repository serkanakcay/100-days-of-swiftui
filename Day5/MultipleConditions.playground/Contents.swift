import SwiftUI

// MARK: Multiple Conditions

let age = 16
if age >= 18 {
    print("You Can Vote in the Next Election")
} else {
    print("Sorry you're too young to vote")
}

let temp = 25

if temp > 20 && temp<30{
        print("It's a nice day")
}

let userAge = 14
let  hasParentalConsent = true

if age >= 18 || hasParentalConsent == true {
    print("You can bu the game!")
}


enum TransportOption{
    case airplane, helicopter, bicyle, car, escooter
}


let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's Fly")
} else if transport == .bicyle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck ,in traffic")
} else {
    print(" Im going to hire o scooter now!")
}
