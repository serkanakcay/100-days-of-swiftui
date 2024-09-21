import UIKit

// func fonksiyonunAdi(parametreler) -> Dönüş Tipi (Int, Double, String, Bool, vs..)


//makeBreakfast(food: ["eggs", "apple"])
//makeBreakFast(food: ["toast", "cereal"])


//Parametresiz ve Dönüşsüz Fonksiyonlar

func displayPi() {
    print("pi : 3.14")
}

func sayName() {
    print("Merhaba Ben Serkan")
}

// Fonksiyonu Çağırmak

displayPi()
sayName()
//------------------------------------------------------------------

// Parametreli Dönüşsüz Fonksiyonlar

func triple(value: Int){
    let result = value * 3
    print(result)
}

//Fonksiyon Çağırma
triple(value: 5)

//---------------------------------------------------------------

// Çoklu parametreli, Dönüşsüz Fonksiyonlar

func multpiply(firsNumber: Int, secondNumber: Int) {
    let result = firsNumber * secondNumber
    print(result)
}

multpiply(firsNumber: 5, secondNumber: 4)

//------------------------------------------


//Argument Labels
// Okunabilirği arttırır
// Argument Labels Detaylı İncele

func sayHello (to name:String) {
    
    let text = "merhaba "+"" + name
    print(text)
}

sayHello(to: "serkan")

//-------------------------------------------

// Varsayılan Parametre Değerleri

// Başlangıç Değeri Parametrenin sıfır olarak tanımlayabiliriz. Yani Parametreelerde Değer Verebiliriz.
func display(teamName: String, score: Int = 0) {
    let text = teamName + ":" + String(score) // Beşiktaş : 10 olmalı
    
    print(text)
}
//------İKİ TÜR FONKSİYON OLARAK ÇALIŞIR HİÇBİRŞEY VERMEZSEK SIFIR OLARAK ATADIĞIMIZ DEĞER GELİR
display(teamName: "GALATASARAY", score: 5)

display(teamName: "Fenerbahçe")

///---------------------------------------------
// Parametreli ve Dönüşlü Fonksiyonlar


func multiPlay(firstNumber: Int, secondNumber: Int) -> Int {
    let resutl = firstNumber * secondNumber
    return resutl
}

//Fonksiyonu Çağırma 1.Yol
// multpiply(firsNumber: 5, secondNumber: 3)

//Aslında Dönüşümlü parametreli fonsiyonun Kullanım amacı
//Bir Değişkene Atayarak onu Düzenleyerek Ekrana Yansıtırız

let sonu2 = multiPlay(firstNumber: 4, secondNumber: 5)

var  resultTexta = "Çarpma İşleminin Sonucu : " + String(sonu2)
print(resultTexta)
///----------------------------------



