import SwiftUI

// MARK: Dictionaries

var employee = ["Taylor Swift", "Singer", "Nashville"]

print("Name: \(employee[0])")


print("Job title: \(employee[1])")


print("Location: \(employee[2])")

//--------------------------------



var employeeOne = [
    "Name" :"Taylor Swift",
    "Job": "Singer",
    "location" : "Nashville"
]


 
print(employeeOne["Name", default: "Unknown"])
print(employeeOne["Job",  default: "Unknown"])
print(employeeOne["location", default: "Unknown"])


let hasGraduated = [
    "Eric" : false,
    "Maeve": true,
    "Otis" : false

]

let olmpics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"

]
print(olmpics[2012, default: "Unknown"])

///-----------------------------------------------
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["Lebron James"] = 206

var archEnemies = [String : String ] ()

archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Le Luthor"
archEnemies["Batman"] = "Penguin"

