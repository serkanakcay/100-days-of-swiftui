import UIKit

// EXTENSIONS

// extension SomeType {}


//Extension ile computed Propert Eklemek


extension UIColor {
    static var favoriteColor: UIColor {
        return UIColor(red: 2.5, green: 1.2, blue: 3.3, alpha: 4.3)
        
    }
}

UIColor.favoriteColor

// Instance veya Type Methodları Eklemek


// Instance -> Oluşturulmuş nesne üzerinde çalışır
// Type mETHOD -> Tip üzerinde çalışılır




// Use case : Tekil kelimeleri çoğul hale getirmek istiyorsunuz
// Fakat String üzerinde bu işi yapabilecek bir fonksiyon bulunmuyor


var elma = "Elmalar"
var masa = "Masalar"
var sandalye = "Sandalyeler"

extension String {
    
    mutating func pluralized() -> String {
        // Kompleks bir fonksiyon yapışı iş ise var olan stringdeğerini çoğla geitrmek
        return ""
    }
    
    
}

elma.pluralized()


//Kodunuzu Organize Etmek için kullanılır Extenion kullanımı

class Restoran {
    // var name: String
    // var menuItems : [String]
    // var servers: [Employee]
}


extension Restoran {
    // fun add(menutItem: Menuıtem)
}



struct Employe: Equatable {
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phonenumber:String
    
}

var serkan = Employe(firstName: "Serkan", lastName: "Akca", jobTitle: "d", phonenumber: "5")
var serkan2 = Employe(firstName: "Serkan", lastName: "Akca", jobTitle: "d", phonenumber: "5")

if serkan == serkan2 {
    print("Valla eşit")
}else {
    
    print("yok")
}
