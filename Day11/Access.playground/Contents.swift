import SwiftUI

//ACCESS

struct BankAccount {
   private var founds = 0
    
    mutating func deposit(amount: Int){
        founds += amount
    }
    
    mutating func withDraw(amount: Int) -> Bool {
        if founds > amount {
            founds -= amount
            return true
        } else {
            return false
        }
    }
}


var account = BankAccount()

account.deposit(amount: 100)

let succes = account.withDraw(amount: 200)


if succes {
    print("Withdrew money succesfully")
    
} else {
    print("Failed to get the money")
}


// Static properties

struct School{
    static var studenCount = 0
    
    static func add(student: String){
        print("\(student)joined the school")
        
        studenCount += 1
    }
}


struct AppData{
    static let version =  "1.3 Beta"
    static let saveFileName =  "Settings.json"
    static let homeURL = "https://hackingwithswift.com"
}

AppData.version


struct Employee{
    let username: String
    let password: String
    
    
    static let example = Employee(username: "dasdhah", password: "sjhshahsa")
}


