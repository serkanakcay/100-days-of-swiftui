import SwiftUI

// MARK: BOOLEANS


let fileName = "paris.jpg"
print(fileName.hasSuffix("jpg"))



let number = 120
print(number.isMultiple(of: 3))



let goodDogs = true
let gameOver = false
let isMultuiple = 120.isMultiple(of: 3)


var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOverOne =  false
print(gameOverOne)

gameOverOne.toggle()
