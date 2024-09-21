import UIKit

// Veri Tipleri
//Strşng, Double, Int, Bool

// Ürün
    // - var adı: String
    // - var stok: Int
    // - var fiyat: Double

//Kendi Veri Tiplerimizi Struclar ile oluşturabiliriz.
 
//Bir Struct'ta Neler Var?
// 1- Değişken ve Sabitler (Property)
// 2- Initializers
// 3-Fonksiyonlar(Method)
// 4- enum'lar, başka Struct'lar (Opsiyonel)


struct insan {
    var ad: String
}

// İnsan Türünden Bir Nesne Oluşturma
var insan1 = insan(ad: "serkan")

print(insan1.ad)



 //----Struct içerisinde oluşturduğumuz Fonksiyonlara Method denir buna dışarıdan erişimde sağlanır


struct insani {
    var ad: String
    
    func merhabaDe() {
        
        print("Merhaba benim adım : \(ad)")
    }
}

// İnsan Türünden Bir Nesne Oluşturma
var insan2 = insani(ad: "serkan")

insan2.merhabaDe()

//-------------------------------------------------------------------------------------------

//NESNELER- İNİT KAVRAMI

struct Car {

    var make: String
    var model: String
    var year: Int
    var topSpeed: Int
    
    func startEngine(){
        print("Üreticisi \(make) olan ve modeli : \(model) olan ve üretim yılı \(year) olan ve hızı \(topSpeed) km olan araç çalıştırıldı")
    }
    func stopEngine(){
        print("Üreticisi \(make) olan ve modeli : \(model) olan ve üretim yılı \(year) olan ve hızı \(topSpeed) km olan aracın motoru durduruldu")
    }
    func startParking(){
        print("Üreticisi \(make) olan ve modeli : \(model) olan ve üretim yılı \(year) olan ve hızı \(topSpeed) km olan araç park edildi")
    }
    
}


let car1 = Car(make: "BMQ", model: "SUV", year: 2015, topSpeed: 280)

car1.startEngine()
car1.stopEngine()
car1.startParking()

//-----------------------
//Initializers -> Parameterli bir fonksiyon ile compiler tarafından oluşturulur

//Varsayılan değerler
var string = String.init() // Boş bir string -> ""
var integer = Int.init() //0
var bool = Bool.init() // false


// Kısa yöntem () aç yapınca bir init. olur

var sting2 = String() // İnit işte


// Initializers - Varsayılan Değerler

// Eğer başlangıç değeri vermezsek Nesne oluşturuken init AŞAMASINDA bizden değer isteyecek

struct Odometer {
    
    var count: Int = 0
    
}

let odometre1 = Odometer()
print(odometre1)


//Direk varsayılan sıfır olarak gelecek
//Memberwise Initializers -> Swift tarafından oluşturulan tüm tanımlar
// İstediğimiz değer atayabiliriyorz, yani bir nesne oluşturunca o nesneye bağlı üyelere MEMBERWİSE init denir.

struct Person {
    
var names: String = ""
    
}

// Yukaridaki işleme göre "" personda oluşturmuş olabiliyoruz olabildiğince bundan kaçarız
let person1 = Person()


// Custom Initializers


struct Temprature {
    var celcius: Double
    
    init(celcius: Double) {
        self.celcius = celcius
    }
    init(fahrenheit: Double) {  // Burada aslında
        celcius = (fahrenheit - 32) / 1.8
    }
    
    init(kelvin: Double) {  // Burada aslında
        celcius =  kelvin - 237
    }
}

let temprature = Temprature(celcius: 32.0)

// Problem Şu : Sıcaklık bilgisini verecek kişi fahrenheit türünden anlıyor

let fahrenheit = 98.4 // Kullanıcı girdisi
let calcisValue = (fahrenheit - 32) / 1.8 //Dönüşüm


let temprature2 = Temprature(celcius: calcisValue)

// Bu Kadar Uzatmanın ne Anlamı var

// Custom init kullanalım


let tempreture3 = Temprature(fahrenheit: 90.0)
print(tempreture3)


//--------------------------------------------
// Instance Methods ( Nesne Methodları)


struct Size {
    var width : Double
    var height : Double
    
    func area() -> Double { // Dışarda tanımlasaydık parametre verirdik
        return width * height
    }
    
}

let size1 = Size(width: 10, height: 4)
let size2 = size1.area()

//---------------------------------


struct KilometreSayaci {
    var deger: Int = 0
    
   mutating func  arttır(){
        deger += 1
    }
    mutating func  arttır(miktar: Int){
         deger += miktar
     }
    mutating func  reset(){
         deger  = 0
     }
}


var sayac = KilometreSayaci() // deger = 0
sayac.arttır() // deger özelliği bir artar
sayac.arttır(miktar: 15) // deger özelliği 15 artar

// Sınıfı Oluşturduk Ekrana basalım

print(sayac.deger)


// Computed Properties ( Hesaplanan Özellikler)
// Read Only parametreleri deriz


struct Sicaklik {
    var celcius : Double
    
    // Computr property parantez açıp kapatmak yeterli
    // Return demen yeterli
    var fahrenheit: Double {
        return celcius * 1.8 + 32
    }
    var kelvin: Double {
        return celcius + 273.15
    }
}


let sicaklik = Sicaklik(celcius: 25)

print(sicaklik.fahrenheit)


//------------------------

//Property Observes
//WillSet -> Değer; değişmek üzere- Henüz değişmedi
//didSet- > Değer değişti


//Bu konuyu çalışacak


// Instance -> Obje
// Type -> Veri Tipi ( Struct)



//Type Methods and properties
//static



struct OndalikSayi{
    var deger: Double
    
    
}

let piSayisi = OndalikSayi(deger: 3.14)
piSayisi.deger

// Yukaridaki İşlem yerine Değişmeyen birşey için sürekli nesne oluştur ve neseneden sınıfıra eriş yapmak çok mantıksız onun yerine

//Static nesne oluşturmadan sınıfa erişmemize sağlar

 struct piSayisii{
    static var pi: Double = 3.14

}

piSayisii.pi


///----------v Funksiyonlarda Statick Kullanımı

let enKucukSayi = Double.minimum(12, 34)
let enBuyukSayi = Double.maximum(25, 56)


// Struclarda Custom İnit yapabiliyoruz,
// Struclarda başlatıcı vermek zorunda değiliz ama Classlarda İNİT yapmak zorundayız
struct Pointer {
    
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    func carpma()->Int{
        return  x * y
        
    }
    
    
}


var yeniPointer = Pointer(x: 10, y: 25)

yeniPointer.carpma()






