import UIKit

let dilog = """

Bu Alan Geniş Metin Alanıdır

"""

/// -----------------------
/// Bir String İçerisinde İki Tırnak Kullanımı

let merhaba =  "Kodlama Dünyasına hoşgeliniz \"ben serkan\" akçay"
print(merhaba)

//----------------------------
var myString = ""  // Boş String

// String'lerin boş olduğunu anlamak
if myString.isEmpty {
    print("String Değeri Boş")
}

let a = "a"  // String
let b: Character = "b" //Character

//Interpolation
// Stringleri '+' Sembolü ile bir birin arkasına ekleyebiliriz.

let string1 = "serkan"
let string2 = "akçay"
let fullName = string1 + string2

//-------------------------------

// TERS SLASH KULLANIMI

let  name = "serkan"
let age = 24

print("Merhaba \(name) Yaşın \(age)")

//-----------TERS SLAHS OPTİON VE SORU İŞARETİ İLE YPAILIR --------------


// Bir Fonksiyon yazarak bunu ekrana düzgün bastıralım
// argument label kullandık ve ayrıca ters slahs kullandık

func carpma(_ birinciSayi: Int, ikinciSayı: Int) -> Int {
    
    let carpiyoruz = birinciSayi * ikinciSayı
    return carpiyoruz
}

 let sonuc = carpma(5, ikinciSayı: 4)

print("Yapmış olduğunuz işlemin sonucu : \(sonuc)")

//------------------------------------------

// String Eşitliği

// == -> Eşit Eşit, Stringlerde Aynı Olma veya Eşit Durumuna Bakıyor.


let mont = "Ocak"
let lastMont = "Ocak"
let lowerCaste = "ocak"

if mont == lastMont {
    
    print("Evet Eşit")
}

if mont != lowerCaste {
    print("Hayır Eşit Değil.")
}


//------------------------
// String Kıyaslaması
let names = "serkan"

if names.lowercased() == "SerkaN".lowercased() {
    print("evet aynılar")
}

//.lovercased -> Stringlerde Harfleri çevirmeye sağlar

// Bir Stringin Başlangıcı ile Diğer Stringin Başlangıcı Kıyaslar

let klisiMetin =  "Hello, World"

klisiMetin.hasPrefix("Hello") // Prefix -> Cümlenin Başında Bu Kelime Varmı
klisiMetin.hasSuffix("World") // Suffix -> Cümlenin Sonunda Bu Kelime Varmı

//------------------------------------------

// Bir String Metininde Var mı? Diye Kontrol Ediyoruz.

//Contains
let tanitmaMetni = "Merhaba berk, benim adım Emirhan"

tanitmaMetni.contains("berk")


// String -> Karakterler dizisi
//

let password = "123456"
let count = password.count //6

// Bize Stringdeki Karakter Sayısını verir
//-----------------------------------------

if password.count < 8 {
    print("Şifreniz Güven Vermiyor.")
}

/// index(before: )
/// insert(_:, at:)
/// remove(at:)


let emojiFunny = "😍"
emojiFunny.count

// Emojiler bir karakter olarak algılıyor apple




