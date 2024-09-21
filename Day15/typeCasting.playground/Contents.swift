import UIKit

// Tipler Arası Dönüşüm


// func getClientPet() -> // cat, dog ,bird  -> Aslında hayvan dönemebilir
//  let pet = getClientPet()


/*
 func wwalk( dog: Dog) {
 
 
 }
 func cating(cat: Cat) {
 
 
 }
 
 */


/*
 let pest = getClientPets() // Tüm evcil hayvanları getirir.
 
 */

// as! -> Force cats, eğer alt sınıf üst sınıftan türemiyorsa  sonuç nil olur ve uygulama çöker
// as? -> Mi sorunu sorar


class Animal {}
class Cat: Animal {}
class bird: Animal {}
class dog:Animal {}

// Bir arrayde birden fazla farklı veri tipi bir arada aynı anda bulunuyorsa bu Arrayın veri tipi nedir?
//[string], [Int], [bool] -> Hayır

//-----------------------------------------------------

// 'ANY' Anahatar Kelimesi
// Any -> Her tür veri tipi olabilir demek...


//Örnek

var Arrayin: [Any] = [5, "can", 4.78]

// Array'in sıfırınca elemanı bir int olarak kullanabiliyormuyum

if let firsItem = Arrayin[0] as? String {
    // Arrayın sıfırıncı elemanı bir int tütünden bir değer, fir atemi atanmıştır.
    print(firsItem)
    
}
