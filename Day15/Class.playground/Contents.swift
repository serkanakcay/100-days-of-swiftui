import UIKit

class Person {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func sayHello() {
        
        print("Merhaba sayın :  \(name)")
    }
    
}



//Nesne Oluşturmak

let person1 = Person(name: "Serkan")
print(person1.name)

person1.sayHello()

//Inheritance ( Kalıtım) -> Üst sınıf alt sınıf kavramı tanır
//Canlı ->Hayvanlar -> Memiler -> İnsan -> Çalışan -> Yazılımcı -> İOS geliştirici

//Base Class Oluşturmak

class Vehicle {
    
    var currentSpeed  = 0.0
    //Get Only Property -> değişkenleri böyle yapabiliriz
    var description : String {
        return "Arac saatte \(currentSpeed) km hız ile haraket ediyor."
    }
    
    func makeNoise(){
        
        // Herhangi bir aracın nasıl sesi var bilmiyoruz
        
    }
    
}


let someVehicle = Vehicle()

print("Vehicle : \(someVehicle.description)")


//Subclass Oluşturmak

//class SomeSubclass: SomeSuperClass


// Bicyhle üst sınıfın tüm değişken fonksiyonları değişkenlerin tümüne sahip olur.
class Bicyle: Vehicle {
    
    var hasBasket = false // Bisikletin ön sepeti var mı yok mu?
    
    
    
}

let bicyle = Bicyle()
bicyle.hasBasket = true
bicyle.currentSpeed = 12

//Çoklu Kişinin binebileceği bisiklet türü
class Tandem : Bicyle {
    
    var currunt = 0
    
    
}

let tandem1 = Tandem()

tandem1.hasBasket = true

print("aracımızda sepet \(tandem1.description)var")

// Override Method and Properites
//Method ve özellikleriin yeniden yazılması

class Train : Vehicle {
    
    //Üst sınıftan aldığı Methodu değiştirdiğimiz için override func şeklinde gelir
    override func makeNoise() {
        print("Choo, choo")
    }
    
}

let train1 = Train()

train1.makeNoise()


// Değişkenlerde override edilir
class Car: Vehicle {
    
    var gear = 1
    override var description: String {
//       return  super.description -> Üst sınıfdaki yani Base classdaki değişkeni hiç değiştirmeden getirmeyi sağlar.
        return "araç saate \(gear) ile "
    }
}


let car1 = Car()

print(car1.description)


//Override İnitalizer
// Neler Override ediliyor? -> Değişken, sabit ve fonksiyonlar ama initlerde edilebiliyor.


class İnsan {
    
    var name : String
    
    init(name: String) {
        self.name = name
    }
    
}


class Ogrenci : İnsan {
    var enSevdigiDers: String
    
    init(enSevdigiDers: String, name:String) {
        self.enSevdigiDers = enSevdigiDers
        //üst sınıfdan gelen yapmamız gerek init
        super.init(name: name)
    }
    
}

let ogrenci1 = Ogrenci(enSevdigiDers: "mat", name: "serkan")

print(ogrenci1.name)
print(ogrenci1.enSevdigiDers)


//Class ve referans edilebilme


var ogrenci2 = Ogrenci(enSevdigiDers: "fizik", name: "ahmet")
var ogrenci3 = ogrenci2

print(ogrenci3.enSevdigiDers)

// Classlar referans edilebiliyor, objeyi kopyalamıyor
// Struclar objeyi kopyalar


