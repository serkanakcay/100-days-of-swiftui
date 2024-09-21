import UIKit


// Enum Oluşturmak
//Not: Enum isimleri Struct ve Classlardaki gibi Büyük harfle başlar
// not: Case isimleri küçük harfle başlar
// Oluşturulan enum objesine sonradan case eklenemez
// Sabit isimler ve sayıdadır

enum Yon {
    case kuzey
    case guney
    case dogu
    case bati
}

// Şu Şekilde tanımlanabiliyor

/* enum {
 case kuzey, guney, dogu, bati
 }*/

// Enumlardada objeler init edilir yani başlangıç değeri sağlanarak nesneler oluşturulur aynı sturct ve classlardaki gibi


// Enum Kullanımı
var suankiYon = Yon.kuzey
// ikiside kabul
let eskiYon: Yon = .guney

//Yonu değiştirelim

suankiYon = .guney

//-------------------------------------
// Kontrol Mekanizmaları ile enum kullanımı
//Enumlar switcle rile kullanılması doğru olmaktadır.


switch suankiYon {
    
case .kuzey:
    print("Kuzey Yönünde İlerliyorsunuz")
case .guney:
    print("guney Yönünde İlerliyorsunuz")
case .dogu:
    print("dogu Yönünde İlerliyorsunuz")
case .bati:
    print("batı Yönünde İlerliyorsunuz")
}

//-----------------------
// Enum kullanım ile tip Güvenirliği


struct Movei {
    
    var name: String
    var releseYear: Int
    var genre: String
    
}


let move1 = Movei(name: "film", releseYear: 2014, genre: "Drama")
// Problem genre film türü standarada sahip değil: Drama, drama, rama olabilir

// Genre bir enum olmalı


enum kategori {
    case aksiyon
    case drama
    case belgesel
}


struct Filmler {
    var adi: String
    var cikisYili: Int
    var turu: kategori
    
}


var yenifilm = Filmler(adi: "Okul Zaman", cikisYili: 2014, turu: .aksiyon)

// Enumlar çoğunlukla birşeyin tipini ifade etmek için tercih edilir

enum KoltukTipi {
    case camKenari
    case ortaKoridor
}


enum Cinsiyet {
    case erkek
    case kadın
    case belrisiz
}
