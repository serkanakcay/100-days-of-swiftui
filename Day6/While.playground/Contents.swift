import SwiftUI


// MARK: While

var countdown = 10

while countdown > 0 {
    
    print("\(countdown)")
    countdown -= 1
}

print("Blast Off!")


let id = Int.random(in: 1...1000)

let amount = Double.random(in: 0...1)


var roll = 0


while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
print("Ciritical Hit!")

