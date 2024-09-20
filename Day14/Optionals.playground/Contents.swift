import SwiftUI

//MARK: Optionals

let opposites = ["Mario": "Wario", "Luigi" : "Waluigi"]
let peachOpposite = opposites["Peach"]


if let marioOpposite = opposites["Mario"]{
    print("Mario 's opposite is \(marioOpposite)")
}

var username: String? = nil


if let unwrappedName = username{
    print("We Got a user:  \(unwrappedName)")
} else {
    print("The Optional was empty")
}

var num1 = 1_000_000
var num2 = 0
var num3: Int? = nil


var str1 = "Hello"
var str2 = ""
var str3: String? = nil


var arr1 = [0]
var arr2 = [Int]()
var arr3: [Int]? = nil


func squere(number: Int) -> Int{
    number * number
}
var number: Int? = nil


if let number = number{
    print(squere(number: number))
}


//-----------------------------------------------

func printSquare(of number: Int?){
    guard let number = number else{
        print("Wissing input")
        return
    }
    print("\(number) x \(number) is \(number * number)")
}


var myVar: Int? = 3

/*
if let unwrapped = myVar{
    // Run if myVar has a value inside
    
}



guard let unwrapped = myVar else {
   // Run if myVar doesn't have a value inside
}


*/

//----------------------------------------------

let captains = [
    "Enterprise" : "Picard",
    "Voyager" : "Janeway",
    "Defiant" : "Sisko"
]


let new = captains["Serenity"] ?? "N/A"

// OR :  let new = captains["Serenity", default: "N/A"]


 
let tvShow = ["Archer", "Babylon5", "Ted Lasso"]
let favorite = tvShow.randomElement() ?? "none"


struct Book{
    let title: String
    let author: String?
}

let book =  Book(title: "Beowuld", author: nil)
let author = book.author ?? "Annonymous"
print(author)

let input = ""
let numbers = Int(input) ?? 0
print(numbers)


///---------------------------------------------------------------------

let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No One"

print("Next in line \(chosen)")

struct BookOne{
    let title : String
    let author: String?
    
}


var books: BookOne? = nil

let authorOne = books?.author?.first?.uppercased() ?? "A"
print(authorOne)




//-----------------------------------------

enum userError: Error{
    case badID, networkFailed
    
}

func getUser(id: Int) throws -> String{
    throw userError.networkFailed
}


if let user = try? getUser(id: 23){
    print("User \(user)")
}

let user = (try? getUser(id: 23) ?? "Anonymous")
print(user)
