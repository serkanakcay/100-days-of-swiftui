import UIKit

// Optionals
// ?! ve soru işareti

// Bir Değere Sahip olup olmadığını söyleyen işlem aslında.


// Gözle görülür ama içi boş olan bir kutu  düşünelim

var name: String = ""


// Gözle görünmüyor henüz, ama birgün olacağı biliniyor.

var age: Int? // Henüz memmoryde yaşamıyor ama birgün yaşayabilir, ama yaşayamadabilir henüz gerçekleşmemiş

//Nill
// Değer olmayışı = nil olma durumu

var test: String? = nil

// Soru işareti ? bir değer , olabilirde olmayadabilir ( string, Int, Bool, etc.) veya olmayabilir (nill)


//-------------------
// Ornek

struct Books {
    var name: String
    var  puplicyears: Int? // Yeni yayınlacak kitabın ne zaman yayınlaacağını bilmediğimiz için tarih giremiyoruz ?optionals kullanırız
}


let firsHarry = Books(name: "book1", puplicyears: 2015)
let firsaHarry = Books(name: "book2", puplicyears: 2016)
let firsaaHarry = Books(name: "book3", puplicyears: 2017)

//Henüz yayınlanmamış kitapta soru işareti koyduğumuz için artık nil alabiliyor.
let yayinlanmasmasi = Books(name: "kitap4", puplicyears: nil)

// Optional işlem gerçekleştirince nil verme yani belirtmeme durumu verebiliyoruz.
// Optional Olanların Tipini Belirtmek

 var serverRepson = 404 // Değeri nil olamayan tanımlama
// Birşeyin nil olabilmesi için optional kullanmak gerekir
// Aşağıdaki işlem buna göre güzel örnek yarın nil de olabilir şuan 404 gibi düşünebiliriz.
var serverrRespson : Int? = 404


//--------------------------------------
//Optional olan değerler ile çalışmak

//Bir değerin 'nil' olup olmadığını nasıl kontrol edersiniz? (if)

var years: Int? = 2010

if years != nil {
    //Eğer yıl nil yani boş değilse
    // ! -> Bu işarete force-unwrap operator deniyor. 'nil' olabilecek değerleri zorunlu çıkartır.
    // nil değilmiş gibi kullanmak için sonuna ! ünlem ekleriz
    
    print(years!)
    // Bunun için emin olmanız lazım yoksa crach yer
    
}

// If- Let

// İf let yapısı -> eğer ben yeni bir sabit oluşturabiliyorsam demek.ve oluşturduğum sabite yeni değer atayarak sorguya alırım.

if let layer = years {
    // Years nil değilse onun değerini unwrap eder ve layer olarak sunar.
    
    print(layer)
    
    
}

//--------------------------------------------
// Fonksiyonlar & Optionals

// Tip dönüşümü -> type Casting Int(değer)


let string = "123"

let possibleNumar = Int(string) // Bu sonuç opsiyonel sonuç verir
// Neden: Çünkü her yazı bir tam sayı ifade etmeyebilir.
// Örnek: "123" -> Tam sayı olabilirken, "abc" -> Tam sayıya dönüşemez bu durumda sonuç 'nil' olur.


// Fonksiyon Örneği

func printFullName (firsName: String, lastName: String, fullaName: String?){
    // Lastname önce if-let ile kontrol edilmeli sonra kullanılmalı
}


func textFromUrl (url: URL) -> String?{
    return nil
}

//--------------------------------------------------------------------------
//failable initliazers ( İnitilaze edilemeyen objeler)

struct Cocuk {
    var name: String
    var months: Int
    
    init?(name: String, months: Int){
        
        if months < 12 || months > 36 {
            return nil
        } else
        {
            
            self.name = name
            self.months = months
            
        }
        
    }
    }


let c1 = Cocuk(name: "serkan", months: 34) // İnit edilecek nil yazmaz
let c2 = Cocuk(name: "serkan", months: 55) // nil dönecek

if let cocuk1 = c1 {
    // Buraya girmez c1 -> "nil"
    
}

//---------------------------------------------------------------
//Optionals Chaining
// xyz?.abc?.123


struct Person {
    var age: Int
    var residance: Resiadance
    
    
    
}

struct Resiadance {
    var adress: Adress?
    
}

struct Adress{
    
    var builnamber: String
    var stretname: String
    var apartmens: String?
}



//--------------------------------------------
//----GUARD YAPISI



// Guard -> Optionals olan değeri çıkarmaya yarar
// ifleri iç içe koymaz, guardlarda return yazmamızı bekler.

/*
// func dogumGunuMuzugiCalma(){
if dogumGunuBugunmu{
 if !davetlistes.isEmpty
 }

}
*/

//Birinci Örnek
func divide(number: Double, by divisor: Double){
    
    if divisor != 0 {
        let result = number / divisor
        return
        
        
    }
}

// yukarıdaki yöntemi Guard ile yapalım



func divide(_ number: Double, by divisor: Double){
    guard divisor != 0 else { return }
    let result = number / divisor
        
        print(result)
    }


//Guard Geniş optionals


struct Book {
    var title: String
    var price: Double
    var pages: Int
    
    
}



// Genel Tekrar Optionals


// Aşşağıdaki Örnekte göründüğü gibi, biz eğer sayı gelip gelmeyeceğini bilmiyorsak ama yer açılsın diyorsak optionals kullanırız

var sayi: Int?
/*
var sayi:Int
sayi + 5
*/

//Bu durumlarda optionals devreye girer

/*
 var sayi: Int?
 sayi + 5
 */
   
// Yukarıdaki işlemde hata alıyoruz derleyici bize emin olmamı istiyor o yüzden
// Optionalsdan çıkartıyoruz.

// Optionals Binding -> Yani başka değere atarak optionalsdan çıkarıtırız

//if -let kullanırız ve artık optionalsdan çıkarıtırız


if let sayimiz = sayi {
    
    var sayimiz = 2022 - sayi!

}
    
// guard let (early exit)
// Sürekli içeri doğru if let ile ilerlemek istemiyorsak

//nil coalescing operator

let value: Int = age ?? -1

// eğer nil değilse age atar,  eğer nil ise -1 default değerine attı


let names : String = "ugur"

if let chat: Character = names.first {
    
    print(chat)
}

//Optional Chaining

let value2: Character? = names.first

//unwarapping -> if let ile çıkarmak 

//Forced Unwrapping -> Zorla çıkarmak

//Aşşağıdaki zorla çıkarmak
var ad:String? = "Serkan"

print("isminiz\(ad!)")

//Yukarısı------




