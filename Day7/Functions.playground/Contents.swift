import SwiftUI

//MARK: // Functions

func showWelcome(){
    print("Welcome to my app!")
}


showWelcome()


func printTimesTables(number: Int, end: Int){
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 3, end: 20)


//-------------------------------------------------

func areLettersIdentical(string1: String, string2:String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    
    return first == second
}


areLettersIdentical(string1: "DDA", string2: "DDA")


func pyhagoras(a:Double, b:Double) -> Double{
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pyhagoras(a: 7, b: 4)
print(c)


func sayHello(){
    return
}

//--------------------------------------------------------------

func isUppercase(string: String) -> Bool{
    string == string.uppercased()
}


func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()

print("Name: \(user[0]) \(user[1])")

//------------------------------------------------------------

func rollDice(slides: Int, count: Int) -> [Int]{
    var rolls = [Int]()
    
    for _ in 1...count{
        let roll = Int.random(in: 1...slides)
        rolls.append(roll)
    }
    return rolls
}

let rolls = rollDice(slides: 3, count: 5)


let lyric = "I See a red door and I want it painted black"
print(lyric.hasPrefix("I See"))

func sUppercase(_ string: String)-> Bool {
    string == string.uppercased()
}

let string = "HELLO WORLD"
let result = sUppercase(string)


func printTimesTable(number: Int){
    for i in 1...12{
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTable(number: 3)


