import SwiftUI


//MARK: Statements


enum Weather {
    case sun, rain, wind, snow, unknown
}


var forecast =  Weather.sun
/*
if forecast == .sun{
    print("It Should be a nice Day.")
}else if forecast == .rain{
    print("Pack an Umbrella")
}else if forecast == .wind{
    print("Wear something warm")
}else if forecast == .rain{
    print("School is cancelled")
}else{
    print("Our forecast generator is broken")
}
*/

switch forecast{
    
case .rain:
    print("It Should be a nice Day.")
case .wind:
    print("Pack an Umbrella")
case .snow:
    print("Wear something warm")
case .unknown:
    print("School is cancelled")
case .sun:
    print("It Should be a nice Day.")
}



let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd")
default:
    print("Who are you")
}

let day = 5
print("My True love gave to me..")


switch day{
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 french hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A Partrid in a pear tree")
    fallthrough
}

