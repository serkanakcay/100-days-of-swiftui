import SwiftUI

// Mark: Extension


extension String{
     func trimmed() -> String{
        self.trimmingCharacters(in: .whitespaces)
    }
}




struct Book {
    let title: String
    let pageCount : Int
    let readingHourse: Int
    
}


let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHourse: 24)

//---------------------------------------------------------------------------


extension Array{
    var isNotEmpty: Bool{
        isEmpty == false
    }
}



let quests = ["Mario", "Luigi", "Peach"]

if !quests.isNotEmpty {
    print("Guest Count :  \(quests.count)")
}





protocol Person {
    var name: String {get}
    func sayHello()
}

extension Person{
    func sayHello(){
        print("Hi, I'm \(name)")
    }
}


struct Employee: Person{
    var name: String
    
    
}

let personOne = Employee(name: "Serkan")
personOne.sayHello()
