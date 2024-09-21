import UIKit

//Bilgi Türleri
// "merhaba"
// Sabitler 'let' ile tanımlanır tekrar tekrar değişmez

let name = "serkan"

print(name)

// Comment Satıları Çalıştırılmayacak Anlamına Geliyor.


// Değişken 'var' ile tanımlanır ve tekrar değiştirilebilir

var height = 170

print(height)

height = 171

print(height)

/// Tenis Maçı Kurgusu Oluşturma

//Camel case kullanımı
// Her kelimenin Baş harif büyük olmalı ama ilk harfi küçük olmalı
let deafultScore = 100

var playerOneScore = deafultScore
var playerTwoScore = deafultScore


print(playerOneScore)
print(playerTwoScore)

playerOneScore = 200

print(playerOneScore)


//İsimlendirme Kuralları


let sonuc = 15  // Bu neyin 15'i no mu?, daire mi numaramı
let toplamaSonucu = 15 // Toplama sonucunun 15 i olduğunu anlayabiliyoruz.
//Kurallar
// 1- Matematiksel sembol içeremez
// 2- İsimlendirmede boşluk kullanamazsınız
// 3- Hiçbirşekilde sayı ile başlayamaz



//---Veri Tipleri----

// String -> "" işareti kullanırız
// Double  -> 12.45  yazmamız yeterli
// Int  -> 12 gibi tam sayı yazmamız yeterli
// Bool -> iki değer alabilir true, false şeklinde


// option tuşuna basarak o değerin hangi tip ait olduğu yazar
let city = "istanbul"
let sayi1 = 1
let isiklarAcikMi = true




// Veri tipleri aslında birer şablon dilersek struct ve class ile binlercesini oluşturabiliriz.

struct Insan {
    let firstName :  String
    let lastName : String
    
    func sayHello(){
        
        print("merhaba")
        
    }
}

// Oluşturduğumuz şablondan veri sınıfıdan bir nesne oluşituralım
//Buda aslında bir veri tipi o şekildede düşünebiliriz.
let insan1 = Insan(firstName: "serkan", lastName: "akçay")

print(insan1)

let cityName: String = "san Francisco"

// İlla bir sabiti veya değişkeni birşeye eşitlemek zorunda değiliğiz

let ad:String

