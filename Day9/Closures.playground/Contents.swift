import SwiftUI

//MARK: Clousres

func greetUser(){
    print("hi There!")
}


greetUser()

var greetCopy = greetUser

greetCopy

let sayHello =  {
    print("Hi There!")
}


sayHello()

let SayHelloOne = { (name:String) -> String in
    "Hi \(name)"
    
}


func getUserData(for id: Int) ->String{
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Annonymous"
    }
}




let team =  ["Gloria", "Suzanne", "piper", "Tasha"]

let teamSorted = team.sorted()

print(teamSorted)


func captainFirstSorted(name1: String, name2: String) -> Bool {
    
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
    
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

//-----------------------------------------------------


let teams = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainfFirtTeams = teams.sorted{
    if $0 == "Suzzane"{
        return true
    } else if $1 == "Suzanne"{
        return false
    }
    return $0 < $1
}


let reverseTeams = teams.sorted{$0 > $1}


let tOnly = teams.filter{$0.hasPrefix("T")}

print(tOnly)

let uppercaseteam = teams.map{$0.uppercased()}
    print(uppercaseteam)
