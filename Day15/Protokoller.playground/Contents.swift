import UIKit

// protocol
// Bir dizi fonksiyon ve değişkenlerden oluşan bir 'şablon'dur

// Swif'te var olan bazı protokller;

// CustomStringCevertable
// Equtable
// Comparable
// Codable


// ----------------------------

// CustomStringCenvertable


let string1 = "Hello World"

print(string1)

struct Ayakkabi{
    
    var color: String
    var size: Int
}

var ayakkabi1 = Ayakkabi(color: "kırmızı", size: 41)

print(ayakkabi1)

// Bu Protokol description alarak gelir

struct shoe: CustomStringConvertible{
    var color: String
    var size: Int
    var description: String{
        return "color: \(color), size: \(size)"
    }
}

var shoe1 = shoe(color: "siyah", size: 10)

print(shoe1.description)

// Description adında bir read, only property ekler
// Bu oluşturulan sınıf içindeki propertylerde mantıksal operatör kullanabiliriz




//----------------------------------------------------------------------------
// Equtable -> Bilgi Kıyaslaması



struct Employee: Equatable{
    
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: Int
}



var insan1 = Employee(firstName: "Serkan", lastName: "Akcay", jobTitle: "Tek", phoneNumber: 121231)

var insan2 = Employee(firstName: "Serkan", lastName: "Akcay", jobTitle: "Tek", phoneNumber: 121231)



// İnsan1 Nesnesi İnsan2 Nesnesine Eşitmi Kontrolünü "Equtable" protokolü ile yaparız.
insan1 == insan2

// Sonuc: True Dönecektir



struct Company{
    var name: String
    var employes: [Employee]
}



// Uygulamaya giriş yapmış kişi
let currentEmploye = Employee(firstName: "Serkan", lastName: "AKCAT", jobTitle: "DD", phoneNumber: 34)


// Üstüne tıklanarak seçilen kişi
let selecetedemPLOYE = Employee(firstName: "Berkin", lastName: "dana2", jobTitle: "ddw", phoneNumber: 34)

// İki kişiyi kıyaslamalıyız ve eğer eşitse,
// Kişi kendi bilgilerini düzenleyebilmeli
// Eğer eşit değilse düzenleme özelliği kapanmalı

if currentEmploye == selecetedemPLOYE {
    
    print("Düzenleyebilirsiniz")
    
} else {
    
    print("Düzenlenmez")
}

//-----------------------------------------------------------------------------------------------------
//Comparable -> Bilgi Sıralaması

struct Employee2: Equatable, Comparable {
    
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: Int
    
    //Protokol tarafından gelen fonksiyon bu sıralama için karşılaştırma yapar
    static func < (lhs: Employee2, rhs: Employee2) -> Bool {
        return lhs.lastName < rhs.lastName
    }
    
}


let employeee1 = Employee2(firstName: "name1", lastName: "last1", jobTitle: "job1", phoneNumber: 1)

let employeee2 = Employee2(firstName: "name2", lastName: "last2", jobTitle: "job2", phoneNumber: 2)

let employeee3 = Employee2(firstName: "name4", lastName: "last4", jobTitle: "job4", phoneNumber: 4)

let employeee4 = Employee2(firstName: "name3", lastName: "last3", jobTitle: "job3", phoneNumber: 3)


let employeArayya = [employeee1, employeee2, employeee3, employeee4]


//sorted(by:)
//Array'ler üzerinde sıralama Fonksiyonu

//Büyüktne küçüğe sıralar
let sortedEmlpo = employeArayya.sorted(by: >)

for emlpoo in sortedEmlpo{
    
    print(emlpoo)
}


//----------------------------------------------------------------------------------------------------

//Codable -> Bilginin 'Dictionary' formuna geçirilmesi ( dictionary formatına geçirilmesini sağlar -> key-value ikilisine dönüştürüyor)


struct Employee3: Equatable, Comparable, Codable {
    
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: Int
    
    //Protokol tarafından gelen fonksiyon bu sıralama için karşılaştırma yapar
    static func < (lhs: Employee3, rhs: Employee3) -> Bool {
        return lhs.lastName < rhs.lastName
    }
    
}


let employeNew = Employee3(firstName: "ben", lastName: "atks", jobTitle: "devinb", phoneNumber: 35)

//Codable protokolünü destekleyen bir veri modelinden Dictionary formunda veri oluşturabilmek için
//JSONEncoder adını verdiğimiz class kullanır


let encoder = JSONEncoder()

let jsonData = try! encoder.encode(employeNew)

let hsonString = String(data: jsonData, encoding: .utf8)

print(hsonString)


//--------------------------------------------------

//Protokol oluşturmak

//Protokoller bir değişkenin veya fonksiyonun ne yaptığını belirtmez. Yanlızca isim ve tür belirtirler
// get- > Yanlızca Değer okunabilir
// Set -> Okunabilir
// get set -> okuma yazma yapabilir
protocol FullName {
    
    var fullName: String {get set}
    
    func sayHellFull()
}

// İnherint her zaman iki nokta anlamına gelmez
struct NewPersona: FullName{

    var lastname: String
    var noName: String
    var fullName: String{
       return lastname + noName
    }
    
    func sayHellFull() {
        print(fullName)
    }
    
    
    
}
