import SwiftUI

//MARK: Loops

let platforms =  ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift work great on \(os)")
}


for i in 1...12{
    print(" 5 x \(i) is \( 5 * i)")
}

for m in 1..<5{
    print("Counting from 1 up to 5: \(m)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " Hate"
}

print(lyric)
