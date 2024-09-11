import SwiftUI

//MARK:// Functions


var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)


//-------------------------


enum PasswordErrror: Error{
    case short, obvious
}

func checkPassword(_ passowrd:String) throws -> String{
    
    if passowrd.count < 5 {throw PasswordErrror.short}
    if passowrd == "12345" {throw PasswordErrror.obvious}
    
    if passowrd.count < 8 {
        return "OK"
    } else if passowrd.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
    }
let string = "12345"
do {
    let result = try checkPassword(string)
    print("Password rating : \(result)")
} catch {
    print("There was an error : \(error.localizedDescription)")
}
