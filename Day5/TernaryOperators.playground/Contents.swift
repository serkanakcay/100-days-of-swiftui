import SwiftUI

// Ternary Operators

let age = 18

let canVote = age>=18 ? "Yes" : "No"
print(canVote)


let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")


let names =  ["Jayne","Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count)"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark
let background = theme == .dark ? "Black" : "White"
print(background)


