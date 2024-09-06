import SwiftUI

//MARK: Arrays

var beatles = ["John", "Paul", "George", "Ringo"]

let numbers =  [4, 5, 7, 9]

var temperatures =  [25.3, 28.2, 26.4]

print(temperatures[0])
print(numbers[0])
print(beatles[0])


beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Novall")


let firstBeatle = beatles[0]
let firstNumber = numbers[0]

// let notAllowed = firstBeatle + firstNumber : Type Safe

var scores = Array<Int>()

scores.append(100)
scores.append(80)
scores.append(10)

print(scores[0])


var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

print(albums.count)

var characters =  ["Lana", "Pam", "Ray", "Sterling"]

print(characters.count)

characters.remove(at: 2)

print(characters.count)

characters.removeAll()
print(characters.count)


let bondmovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondmovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]

print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()

print(reversedPresidents)
