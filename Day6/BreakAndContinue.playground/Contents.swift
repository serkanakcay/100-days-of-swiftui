import SwiftUI

// MARK: Break and Continue

let fileNames = ["me.jpg", "work.txt", "sophie.jpg"]

for fileName in fileNames {
    if fileName.hasSuffix(("jpg")) == false {
        continue
    }
    
    
    print("Found picture : \(fileName)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000{
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
        if multiples.count == 10 {
            break
        }
    }
}


print(multiples)
